
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:spent_time/model/demo_model.dart';
// import 'package:spent_time/model/signup_model/signup_model.dart';

// class clientcontroller extends GetxController{
//   final name =  TextEditingController();
//   final email = TextEditingController();
//   final password  = TextEditingController();
  

//   var loginlist=RxList<clientModel>();
//   final db=FirebaseFirestore.instance;

//   Future<bool> addContact (clientModel clientinfo) async{
//   Map<String,dynamic>? clientModel={
//     "usrename":clientinfo.name,
//     "password":clientinfo.password,
//     "email":clientinfo.email

//   };
//   try{
//     await FirebaseFirestore.instance
//     .collection('clientData')
//     .doc()
//     .set(clientModel);
//     return true;
//    } catch(e){

//     return false;
//    }
//   }
//   }