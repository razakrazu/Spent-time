import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/model/model.dart';

class UserRepositry extends GetxController{
  static UserRepositry get instance=> Get.find();
  final db = FirebaseFirestore.instance;

  creatUser(UserModel user) async{
    await db.collection('User').add(user.toJson()).whenComplete((){
Get.snackbar('Success', 'your account has been created',
snackPosition: SnackPosition.BOTTOM,
backgroundColor: Colors.green.withOpacity(0.1),
colorText: Colors.green,);
    }).catchError((error,stackTrace){
  Get.snackbar('Error.','something want wrong .Try again',
  snackPosition:SnackPosition.BOTTOM,
  backgroundColor:Colors.redAccent.withOpacity(0.1),
  colorText: Colors.red);
  print('ERROR -$error');
  });



  }



  Future<UserModel>getUserDetails(String email )async{
    final snapshot = await  db.collection('Users').where('Email',isEqualTo: email).get();
    final userData = snapshot.docs.map((e)=> UserModel.fromSnapshort(e)).single;
    return userData;
  }
   Future<List<UserModel>>allUser(String email )async{
    final snapshot = await  db.collection('Users').get();
    final userData = snapshot.docs.map((e)=> UserModel.fromSnapshort(e)).toList();
    return userData;
  }
}

