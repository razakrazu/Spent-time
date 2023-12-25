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
  final  String? Function(File?)validator;

  Mytextformfieds({
    super.key,
    required this.labal,
    required this.icons,
    required this.onChanged,
    required this.validator,


  });
  
  final clientController = Get.put(ClientSignUpController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: onChanged,

          
      decoration: InputDecoration(
        
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(90),
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
