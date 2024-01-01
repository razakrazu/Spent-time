import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/text_feilds.dart';

class Hotal_Name_Widget extends StatelessWidget {
  const Hotal_Name_Widget({
    super.key, this.hotalname,
  });
final hotalname;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only( top: 20),
          child: Text(
            hotalname,
            style: const TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 230, 228, 228),
                fontWeight: FontWeight.bold),
          ),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 120,top: 20),
           child: Container(
            height: 50,
            width: 100,
            decoration:BoxDecoration(
              border: Border.all(width: 0, color: WhiteColor),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 1, 255, 9).withOpacity(0.4)
            ),
                         child: Row(
                           children: [
                            Width10,
                            Icon(Icons.currency_rupee,color: WhiteColor,),
                             MainTitle(label: ': 3000'),
         
                           ],
                         ),
                       ),
         ),
      ],
    );
  }
}