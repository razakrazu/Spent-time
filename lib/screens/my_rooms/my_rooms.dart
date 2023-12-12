import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/room_details.dart';

class MyRoomsScreen extends StatelessWidget {
  const MyRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return  Container(
            height: 100,
             child: Padding(
               padding: const EdgeInsets.only(left: 10,right: 10),
               child: Card(
                color: Colors.blue,
                child: ListTile(
                  
                  leading:  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CircleAvatar(),
                  ),
                  onTap: ()=>
                  Get.to(RoomDetails()),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Rose villa'),

                  ),
                  subtitle: Text('Calicut'),
                
                
               ),),
             ),
           );
      },
       separatorBuilder: (context, index) => Hight10, 
      itemCount: 10),
    
    );
  }
}