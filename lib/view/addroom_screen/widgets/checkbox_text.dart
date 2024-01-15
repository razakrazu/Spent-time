import 'package:flutter/material.dart';

class CheckBoxTextWidget extends StatelessWidget {
  const CheckBoxTextWidget({
    super.key,required this.title,
  });
final title;
  @override
  Widget build(BuildContext context) {
    return Text(title,style:TextStyle(color:Color.fromARGB(255, 173, 173, 173),fontSize: 14,fontWeight: FontWeight.w600) ,);
  }
}