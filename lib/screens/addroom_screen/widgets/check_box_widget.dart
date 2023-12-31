import 'package:flutter/material.dart';
import 'package:spent_time/core/constants.dart';

class MyCheckBoxWidget extends StatelessWidget {
  const MyCheckBoxWidget({
    super.key,
    required this.istrue,required this.checkBoxTitle,
  });

  final bool istrue;
final checkBoxTitle;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
             Width10,
          Checkbox(
            value: istrue,
            onChanged: (value) => () {},
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