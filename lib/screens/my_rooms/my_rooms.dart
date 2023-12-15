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
      appBar: AppBar(title: Text(
                                      'MY ROOMS',
                                      style: TextStyle(
                                         color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        
                                      ),
                                    ),centerTitle: true,backgroundColor:    const Color.fromARGB(255, 124, 2, 26),),
      body: ListView.separated(itemBuilder: (context, index) {
        return  Container(
           
             child: Padding( 
               padding: const EdgeInsets.only(left: 5,right: 5),
               child: Card(
                
                color: const Color.fromARGB(255, 179, 179, 179),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      height: 100,
                        width: 130,
                      decoration:  BoxDecoration(
                      image: DecorationImage(
                        
                        image: AssetImage('lib/assets/klglff.jpg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          
                    
                    ),      
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 120,
                        width: 150,
                        
                        child: ListTile(
                          
                         
                          onTap: ()=>
                          Get.to(RoomDetails()),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Rose villa'),
                      
                          ),
                          trailing: Text('Calicut') ,
                          subtitle: Text('Calicut'),
                        
                        
                                     ),
                      ),
                    ),
                  ],
                ),),
             ),
           );
      },
       separatorBuilder: (context, index) => Hight10, 
      itemCount: 10),
    
    );
  }
}