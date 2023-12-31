import 'package:flutter/material.dart';

class AdressTextField extends StatelessWidget {
  const AdressTextField({
    super.key, this.hintText, this.fieldText,
  });
final hintText;
final fieldText;
// final onTap;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
         
         // controller: clientController.emailController,
         decoration: InputDecoration(
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
           ),
           hintText: hintText,
           hintStyle: const TextStyle(
             color: Color.fromARGB(255, 133, 133, 133),
           ),
         ),
       ),
     ),
    ],);
  }
}