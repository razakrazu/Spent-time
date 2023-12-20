


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/authentication_cantroller.dart';
// import 'package:spent_time/screens/login%20and%20singup/model/model.dart';

class ClientSignUpController extends GetxController{

  static ClientSignUpController get instance =>Get.find();

 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController  numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

void registerUser(String emailController,String passwordController){
AuthenticationRepositry.instance.createUserWithEmailAndPassword(emailController, passwordController);
}

// var singuplist= RxList<SingupModel>();
// final db =FirebaseFirestore.instance;

//   Future <void>addClient() async{
//     var clint = SingupModel(
//       name: nameController.text,
//       email: emailController.text,
//       number:numberController.text,
//       password: passwordController.text,
      
//     );
//     await db.collection('contacts').add(clint.toJson()).whenComplete(() =>printInfo(info:'Contact Added'),);
    
  
//   }
// final FirebaseAuth auth =FirebaseAuth.instance;
// void singup(){
// print('name:'+nameController.text);
// print('email:'+emailController.text);
// print('number:'+numberController.text);
// print('password:'+passwordController.text);
// createAccount(emailController.text, passwordController.text);
// }
 
//     Future<String>createAccount(String emailController,String passwordController) async{
//       try{
// await FirebaseAuth.instance.createUserWithEmailAndPassword(
//   email: emailController, password: passwordController);
//   print("Account Created");
// return "Account Created";
//       }
//       on FirebaseAuthException catch(ex){
//         if(ex.code== "Weak password"){
//            print("weak password");


//           return "weak password";
//         } else if(ex.code =="email -already in use"){
//           print("Email already exists Login please'");

//           return 'Email already exists Login please';
//         }
//         return "";
//       }
//       catch(ex){ 
//        print(ex);
//         return""; 
        
       
//       }
//     }
  

}