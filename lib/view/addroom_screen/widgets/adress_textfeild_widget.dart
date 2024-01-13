import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class AdressTextField extends StatelessWidget {
  const AdressTextField({
    super.key, this.hintText, this.fieldText,required this.onTap,
  });
final hintText;
final fieldText;
final onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  Padding(
       padding: EdgeInsets.only(left: 15, bottom: 5),
       child: Text(
         fieldText,
         style:const TextStyle(
           color: Color.fromARGB(255, 200, 195, 195),
         ),
       ),
     ),
     Padding(
       padding: const EdgeInsets.only(left: 10, right: 10),
       child: TextFormField(
         controller: onTap,
         decoration: InputDecoration(
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
           ),
           hintText: hintText,
           hintStyle: const TextStyle(
             color: Color.fromARGB(255, 133, 133, 133),
           ),
         ),
          style: TextStyle(color: WhiteColor),
       ),
     ),
    ],);
  }
}