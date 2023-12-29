import 'package:flutter/material.dart';

class MainTitile extends StatelessWidget {
  final label;
  const  MainTitile({
    super.key,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     label,
      style:const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 230, 228, 228),
        fontWeight: FontWeight.bold
      ),
    );
  }
}