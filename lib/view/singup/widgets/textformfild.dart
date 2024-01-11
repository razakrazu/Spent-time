import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/controller/signup_controller/controller.dart';

class Mytextformfields extends StatelessWidget {
  final String labal;
  final IconData icons;
  final TextEditingController onChanged;
 final TextInputType texttype;
 final int maxLength;
final validation;
  Mytextformfields({
    super.key,
    required this.labal,
    required this.icons,
    required this.onChanged,
     required this.texttype,
     required this.maxLength,
     required this.validation,

  });
  
  final clientController = Get.put(ClientSignUpController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
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
