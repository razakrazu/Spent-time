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

var singuplist= RxList<SingModel>();
final db =FirebaseFirestore.instance;

  Future <void>addClient() async{
    var clint = SingModel(
      name: nameController.text,
      email: emailController.text,
      number:numberController.text,
      password: passwordController.text,
      
    );
    await db.collection('contacts').add(clint.toJson()).whenComplete(() =>printInfo(info:'Contact Added'), );
    
  }
}