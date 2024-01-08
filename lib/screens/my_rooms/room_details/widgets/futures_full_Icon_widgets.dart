import 'package:flutter/material.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/room_details_icons.dart';

class RoomFecliticesWidgets extends StatelessWidget {
  const RoomFecliticesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
     
     children:   [
       
       Row(

         children:  [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: RoomFutureIconWidgets(futureicon:Icons.wifi 
          , futuretext: 'Wifi',),

        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.fastfood_outlined 
          , futuretext: 'Food',),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.tv_outlined 
          , futuretext: 'Tv',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.ac_unit_outlined 
          , futuretext: 'Ac',),
        ),
         ],
         
       ),
       Hight40,
        Row(

         children: [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: RoomFutureIconWidgets(futureicon:Icons.pool 
          , futuretext: 'Pool',),

        ),
      
          Padding(
          padding:  EdgeInsets.only(left: 40),
          child: RoomFutureIconWidgets(futureicon:Icons.meeting_room_outlined 
          , futuretext: 'Meeting Room',),
        ), 
          
               Padding(
          padding:  EdgeInsets.only(left: 40),
          child: RoomFutureIconWidgets(futureicon:Icons.fitness_center  
          , futuretext: 'Gym',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.music_note
          , futuretext: 'Music',),
        ),
         ],
         
       ),
     ],
    );
  }
}



