import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({

    super.key,
    required this.btnLabel,
    // required this.onTap
  });
final btnLabel;
// final onTap;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:(){}
     , style:ButtonStyle(
                  
     
     
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Color.fromARGB(255, 120, 191, 227))),
     ),
                
    ), child:  Text( btnLabel, 
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),);
  }
}