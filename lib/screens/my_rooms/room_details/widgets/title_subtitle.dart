import 'package:flutter/material.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class MyTitle_SubTitleWidget extends StatelessWidget {
  const MyTitle_SubTitleWidget({
    super.key, this.maintitle, this.subtitle,
  });
final maintitle;
final subtitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: ,
      child: Column(
        children: [
          
            MainTitle(label: maintitle,),
          Text(subtitle,style:const TextStyle(
          color: Color.fromARGB(255, 230, 228, 228),),),
        ],
      ),
    );
  }
}