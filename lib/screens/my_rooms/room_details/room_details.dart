import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/proparty_facilitys.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/futures_full_Icon_widgets.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/my_button_widget.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/roomdetailsicons.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Get.back();
      //       },
      //       icon: const Icon(
      //         Icons.arrow_back,
      //         color: WhiteColor,
      //       )),
      //   title: const Text(
      //     'ROOM DETAILS',
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 255, 255, 255),
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      // ),
      body:ListView(
        children: [
          // ClipPath(
          //   clipper: WaveClipperOne(),
          //   child: Container(
          //     height: 50,
          //     color: const Color.fromARGB(255, 124, 2, 26),
          //   ),
          // ),
            // SingleChildScrollView(
               Column(
                children: [
                  
                  Container(
                    
                          height: 250,
                     
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisExtent: 370,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                            
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/assets/klglff.jpg',
                                      ),
                                      fit: BoxFit.fill
                                    )),
                              );
                            },
                          ),
                        ),
                      
            
                         Column(
                           children: [
           
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: Container(
                          
                                height: 700,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  spreadRadius: 32,
                                  blurRadius: 50,
                               
                                )],
                                  // borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(width: 0,color: Color.fromARGB(255, 134, 127, 127)),
                                         color: Color.fromARGB(255, 51, 50, 48).withOpacity(0.5),
                                ),
                                child: Column(
                                  children: [
      Padding(
        padding: const EdgeInsets.only(right: 190,top: 20),
        child: Text(
           'Dream Villa',
        style:const TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 230, 228, 228),
          fontWeight: FontWeight.bold
        ),
          ),
      ),
                                     const   Padding(
                              padding:  EdgeInsets.only(right:180,top: 20),
                              child: MainTitile(label: 'Proparty Facilites'),
                            ),
                            Hight20,
                                     Padding(
                                   padding: const EdgeInsets.only(top: 1,),
                                   
                                   child: FuturesFullIconWidgets(),
                                 ),
                                 
                                                 Padding(
                                                   padding: const EdgeInsets.only(top: 30),
                                                   child: SizedBox( 
                                                    width: 
                                                    320,
                                                    height: 40,
                                                     child: MyButtonWidget(btnLabel: 'View All ',
                                                      ),),
                                                   ),
            
                                                   Hight30,
                                                   IconButton(onPressed: (){
                                                    Get.to(PropartyFacilitesScreen());
                                                   }, icon: Icon(Icons.add)),
                                                 
                                                  const   Padding(
                              padding:  EdgeInsets.only(right:200,top: 10),
                              child: MainTitile(label: 'About this  Hotal  '),
                            ),
Hight10,
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                 'Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 230, 228, 228).withOpacity(0.7),
                                  ),
                                ),
                            ),

                    const   Padding(
                              padding:  EdgeInsets.only(right:190,top: 10),
                              child: MainTitile(label: 'Condect with Owner '),
                            ),
                            TextButton.icon(onPressed: (){}, 
                            
                            icon: Icon(Icons.call), label: Text('Call now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 230, 228, 228).withOpacity(0.7),
                                  ),
                                ),)
                                  ]
                                ),
                              ),
                            ),
                           ],
                         ),
                       
                ],
              ),
            // ),
          
        ],
      ),
    );
  }
}




