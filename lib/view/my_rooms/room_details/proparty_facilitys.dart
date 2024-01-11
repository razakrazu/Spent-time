import 'package:flutter/material.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/view/my_rooms/room_details/widgets/futures_full_Icon_widgets.dart';
import 'package:spent_time/view/my_rooms/room_details/widgets/room_details_icons.dart';
import 'package:spent_time/view/my_rooms/room_details/widgets/textfeilds.dart';

class PropartyFacilitesScreen extends StatelessWidget {
  const PropartyFacilitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 50, 48).withOpacity(0.5),
      body:ListView(
        
        children: [
          Hight40,
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children:  [
          Padding(
            padding: const EdgeInsets.all(10),
            child: MainTitle(label: 'Hotal & Room Facilitces'),
          ),
          Hight10,
          RoomFecliticesWidgets(),
          Hight30,
            Row(

         children: [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: RoomFutureIconWidgets(futureicon:Icons.flash_on_outlined
          , futuretext: 'Fan',),

        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.fastfood_outlined 
          , futuretext: 'Parking',),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 10),
          child: RoomFutureIconWidgets(futureicon:Icons.flash_on_outlined 
          , futuretext: 'power Backup',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 5),
          child: RoomFutureIconWidgets(futureicon:Icons.video_camera_back_sharp 
          , futuretext: 'CCTV',),
        ),
         ],
         
       ),
       Hight30,
         Row(

         children: const [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: RoomFutureIconWidgets(futureicon:Icons.lock_clock_outlined 
          , futuretext: ' Sefety   ',),
        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 10),
          child: RoomFutureIconWidgets(futureicon:Icons.bathtub_outlined 
          , futuretext: 'tailetpool',),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.tv_outlined 
          , futuretext: 'Tv',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: RoomFutureIconWidgets(futureicon:Icons.ac_unit_outlined 
          , futuretext: 'Ac',),
        ),
         ],
         
       ),

    ],
  
  ),
),
        ],
      ),
    );
}
}