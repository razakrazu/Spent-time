import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:spent_time/sarvice/authantication_signup/authentication_sarvice.dart';
import 'package:spent_time/model/signup_model/signup_model.dart';

class ClientSignUpController extends GetxController {
  final CollectionReference clientData =
      FirebaseFirestore.instance.collection('clientData');
  static ClientSignUpController get instance => Get.find();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final passwordController = TextEditingController();
  final loginEmail =   TextEditingController();
  final loginpassword =  TextEditingController();
  final signupFormKey = GlobalKey<FormState>();

  void registerUser(String emailController, String passwordController) {
    AuthenticationRepositry.instance
        .createUserWithEmailAndPassword(emailController, passwordController);
  }

  var loginlist =RxList<UserModel>();
  final db =FirebaseFirestore.instance;
  final storage = FirebaseFirestore.instance;


// Future<bool> addContact(UserModel)
// }
}