import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spent_time/core/constants.dart';

class MyCheckBoxWidget extends StatelessWidget {
   MyCheckBoxWidget({
    super.key,
    required this.checkBoxTitle,
  });

   bool istrue = false;
final checkBoxTitle;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
             Width10,
          Checkbox(
            value:null,
            onChanged: (istrue) => () {},
            tristate: true, 
          ),
       Text(
            checkBoxTitle,
            style:const TextStyle(
              color: Color.fromARGB(255, 200, 195, 195),
            ),
          ),
    ],);
  }
}