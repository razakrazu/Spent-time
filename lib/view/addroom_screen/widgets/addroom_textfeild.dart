import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class AddRoomTextfFeld extends StatelessWidget {
  const AddRoomTextfFeld({
    super.key,
    required this.textfieldtitle,
    required this.hintText, 
   required this.onTap,
  });
final textfieldtitle;
final hintText;
final onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              textfieldtitle,
              style: TextStyle(
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
                  fontSize: 15,
                  color: Color.fromARGB(255, 133, 133, 133),
                ),
              ),
               style: TextStyle(color: WhiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
