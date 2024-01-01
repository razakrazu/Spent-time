import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class RoomFutureIconWidgets extends StatelessWidget {
  const RoomFutureIconWidgets({
    super.key,
    required this.futureicon,
    required this.futuretext,
  });
final futureicon;
final futuretext;
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Icon(futureicon,color: WhiteColor,size: 35,),
      Text(
          futuretext,
            style: const TextStyle(
             fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 12
              
            ),),
     ],
    );
  }
}