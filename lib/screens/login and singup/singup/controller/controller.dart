import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:spent_time/screens/login%20and%20singup/model/model.dart';

class ClientsController extends GetxController{
 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController  numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

var singuplist= RxList<SingupModel>();
final db =FirebaseFirestore.instance;

  Future <void>addClient() async{
    var clint = SingupModel(
      name: nameController.text,
      email: emailController.text,
      number:numberController.text,
      password: passwordController.text,
      
    );
    await db.collection('contacts').add(clint.toJson()).whenComplete(() =>printInfo(info:'Contact Added'),);
    
  
  }
//   void onSingup(){
//     Future<String>createAccount(String email,String password) async{
//       try{
// await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
// return "Account Created";
//       }
//       on FirebaseAuthException catch(ex){
//         if(ex.code== "Weak password"){
//           return "weak password";
//         } else if(ex.code =="email -already in use"){
//           return 'Email already exists Login please';
//         }
//         return "";
//       }
//       catch(ex){ 
//        print(ex){
//         return""; 
        
//        }
//       }
//     }
//   }

}