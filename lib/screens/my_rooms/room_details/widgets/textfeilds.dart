import 'package:flutter/material.dart';

class Textfiled extends StatelessWidget {
  final label;
  const  Textfiled({
    super.key,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     label,
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 230, 228, 228),
      ),
    );
  }
}