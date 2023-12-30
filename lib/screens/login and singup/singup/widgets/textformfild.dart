import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/controller.dart';

class Mytextformfieds extends StatelessWidget {
  final String labal;
  final IconData icons;
  final TextEditingController onChanged;
 final TextInputType texttype;
 final int maxLength;

  Mytextformfieds({
    super.key,
    required this.labal,
    required this.icons,
    required this.onChanged,
     required this.texttype,
     required this.maxLength,

  });
  
  final clientController = Get.put(ClientSignUpController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: onChanged,
      keyboardType: texttype,
      maxLength: maxLength,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: labal,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          icons,
          color: const Color.fromARGB(255, 200, 200, 200),
        ),
        
      ),
       
      style: TextStyle(color: WhiteColor),

    );
  }
}
