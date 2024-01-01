import 'package:flutter/material.dart';

class IconButtonWidgets extends StatelessWidget {
  const IconButtonWidgets({
    super.key,required this.buttonIcon,required this.buttonTitle,
  });
final buttonIcon;
final buttonTitle;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(onPressed: (){}, 
    style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color.fromARGB(255, 120, 191, 227))),
          ),
        ),
    
    icon: Icon(buttonIcon,  color: Color.fromARGB(255, 230, 228, 228).withOpacity(0.7),), label: Text(buttonTitle,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 230, 228, 228).withOpacity(0.7),
          ),
        ),);
  }
}




