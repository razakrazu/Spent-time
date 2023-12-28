import 'package:flutter/material.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/roomdetailsicons.dart';

class FuturesFullIconWidgets extends StatelessWidget {
  const FuturesFullIconWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     
     children: [
       
       Row(

         children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.wifi 
          , futuretext: 'Wifi',),

        ),
        Width30,
          Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.fastfood_outlined 
          , futuretext: 'Food',),
        ), 
              Width30,
               Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.tv_outlined 
          , futuretext: 'Tv',),
        ),  
              Width30,
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.ac_unit_outlined 
          , futuretext: 'Ac',),
        ),
         ],
         
       ),
       Hight40,
        Row(

         children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.pool 
          , futuretext: 'Pool',),

        ),
      
          Padding(
          padding: const EdgeInsets.only(left: 40),
          child: RoomFutureIconWidgets(futureicon:Icons.meeting_room_outlined 
          , futuretext: 'Meeting Room',),
        ), 
          
               Padding(
          padding: const EdgeInsets.only(left: 40),
          child: RoomFutureIconWidgets(futureicon:Icons.fitness_center  
          , futuretext: 'Gym',),
        ),  
              Width30,
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: RoomFutureIconWidgets(futureicon:Icons.music_note
          , futuretext: 'Music',),
        ),
         ],
         
       ),
     ],
    );
  }
}



