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
      backgroundColor: Color.fromARGB(255, 51, 50, 48).withOpacity(0.5),
      body:ListView(
        
        children: [
          Hight40,
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
          MainTitle(label: 'Food and Tea'),
  
          RoomFutureIconWidgets(futureicon: Icons.dinner_dining, futuretext: 'coffee/tea/Food'),
    ],
  
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Hight10,
  MainTitle(label: 'Washroom'),
  Hight10,
  RoomFutureIconWidgets(futureicon: Icons.dangerous , futuretext: 'Hair Dryer'),
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Hight10,
  MainTitle(label: 'Seating Area'),
  Hight10,
RoomFutureIconWidgets(futureicon: Icons.subdirectory_arrow_left_sharp , futuretext: 'Hair Dryer'),
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Hight10,
MainTitle(label: 'Media & Tecnology'),
  Hight10,
RoomFutureIconWidgets(futureicon: Icons.tv , futuretext: 'Tv'),
    ],
  ),
),


Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Hight10,
MainTitle(label: 'Hotal Facilities'),
  Hight10,
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
    ],
  ),
),





        ],
      ),
    );
}
}