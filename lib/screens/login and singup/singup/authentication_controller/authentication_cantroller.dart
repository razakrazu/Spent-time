import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time/screens/home_screen/home_screen.dart';
import 'package:spent_time/screens/login%20and%20singup/login_screen.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/exption_screen.dart';

class AuthenticationRepositry extends GetxController{
  static AuthenticationRepositry get instance => Get.find();

final auth = FirebaseAuth.instance;
late final Rx<User?> firebaseUser;

 


void onReady(){
  firebaseUser =Rx<User?> (auth.currentUser);
  firebaseUser.bindStream(auth.userChanges());
  ever(firebaseUser,setInitialScreen);
}

  setInitialScreen(User? user) {
    user == null? Get.offAll(()=>Login_Screen()):Get.offAll(()=>Home_Screen());
  }

    Future<void>createUserWithEmailAndPassword(String emailController,String passwordController) async{
      try{
await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: emailController, password: passwordController);
      } on FirebaseAuthException catch(e){
        final ex =SignUpWithEmailAndPasswordFailure.code(e.code);
        print('FIREBASE AUTH EXCEPTION ${ex.message}');
        throw ex;

      }catch(_){
       const ex = SignUpWithEmailAndPasswordFailure();
               print(' EXCEPTION ${ex.message}');
               throw ex;

      }
    }


  Future<void>loginWithEmailAndPassword(String emailController,String passwordController ) async{
    try{
await auth.signInWithEmailAndPassword(
  email: emailController, password: passwordController);

 
      }
      on FirebaseAuthException catch(e){
      }
      catch(_){}
  }
  Future<void> login() async=> await auth.signOut();
}