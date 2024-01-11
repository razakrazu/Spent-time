import 'package:flutter/material.dart';
import 'package:spent_time/core/constants.dart';

class MyCheckBoxWidget extends StatelessWidget {
   MyCheckBoxWidget({
    super.key,
    required this.checkBoxTitle,
     this.onTap,
    
  });

  bool? onTap ;
final checkBoxTitle;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
             Width10,
          Checkbox(
            value:onTap,
            onChanged: (Value) => () {
  onTap =Value;
            },
    
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