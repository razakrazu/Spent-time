import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/roomdetailsicons.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class PropartyFacilitesScreen extends StatelessWidget {
  const PropartyFacilitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      body:ListView(
        
        children: [
          Hight40,
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    
        MainTitile(label: 'Food and Tea'),
  ],
),
RoomFutureIconWidgets(futureicon: Icons.dinner_dining, futuretext: 'coffee/tea/Food'),

Hight10,
MainTitile(label: 'Washroom'),
Hight10,
RoomFutureIconWidgets(futureicon: Icons.dangerous , futuretext: 'Hair Dryer'),

Hight10,
MainTitile(label: 'Seating Area'),
Hight10,
RoomFutureIconWidgets(futureicon: Icons.subdirectory_arrow_left_sharp , futuretext: 'Hair Dryer'),
Hight10,
MainTitile(label: 'Media & Tecnology'),
Hight10,
RoomFutureIconWidgets(futureicon: Icons.tv , futuretext: 'Tv'),
Hight10,
MainTitile(label: 'Hotal Facilities'),
Hight20,
Row(
  children: [
Width20,
RoomFutureIconWidgets(futureicon: Icons.ac_unit , futuretext: 'Ac'),
Width40,
RoomFutureIconWidgets(futureicon: Icons.wifi , futuretext: 'Wifi'),
Width30,
RoomFutureIconWidgets(futureicon: Icons.ac_unit , futuretext: 'Power backup'),
Width30,
RoomFutureIconWidgets(futureicon: Icons.assignment_turned_in_outlined , futuretext: 'Reception'),
  ],
),


Hight20,
MainTitile(label: 'Washroom'),
Hight10,
RoomFutureIconWidgets(futureicon: Icons.dangerous , futuretext: 'Ac'),
Hight10,
RoomFutureIconWidgets(futureicon: Icons.dangerous , futuretext: 'Hair Dryer'),
        ],
      ),
    );
}
}