import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/authentication_cantroller.dart';


class ClientSignUpController extends GetxController{

  static ClientSignUpController get instance =>Get.find();

 TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController  numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

void registerUser(String emailController,String passwordController){
AuthenticationRepositry.instance.createUserWithEmailAndPassword(emailController, passwordController);
}



}