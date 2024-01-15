import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class DiscriptionWidgets extends StatelessWidget {
  const DiscriptionWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,

      children: [
      const Padding(
       padding: EdgeInsets.only(left: 10,top: 10),
       child: Text(
         'Description',
         style: TextStyle(
           color: Color.fromARGB(255, 200, 195, 195),
         ),
       ),
     ),
     Padding(
       padding: const EdgeInsets.only(left: 10, right: 10,top: 10),
       child: TextFormField(
         decoration: InputDecoration(
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
           ),
           hintText: 'Add description',
           hintStyle: const TextStyle(
             color: Color.fromARGB(255, 133, 133, 133),
             height: 5,
           ),
         ),
          style: TextStyle(color: WhiteColor),
       ),
     ),
    ],);
  }
}