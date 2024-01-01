
import 'package:flutter/material.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/text_feilds.dart';

class DiscriptionText_MainTitle extends StatelessWidget {
  const DiscriptionText_MainTitle({
    super.key, this.discriptiontext, this.maintitle,
  });
final discriptiontext;
final maintitle;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
                             Padding(
    padding:const  EdgeInsets.only(right:200,top: 10),
    child: MainTitle(label: maintitle),
                            ),

                            Padding(
    padding: const EdgeInsets.all(10),
    child: Text(
       discriptiontext,
        style: TextStyle(
          fontSize: 14,
          color: const Color.fromARGB(255, 230, 228, 228).withOpacity(0.7),
        ),
      ),
                            ),
    ],);
  }
}
