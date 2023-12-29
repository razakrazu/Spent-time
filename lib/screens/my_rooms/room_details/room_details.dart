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
      body: Column(
        children: [
          // ClipPath(
          //   clipper: WaveClipperOne(),
          //   child: Container(
          //     height: 50,
          //     color: const Color.fromARGB(255, 124, 2, 26),
          //   ),
          // ),
            Stack(
              children: [
                Container(
                        height: 380,
                   
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 300,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                          
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'lib/assets/klglff.jpg',
                                    ),
                                    // fit: BoxFit.cover,
                                  )),
                            );
                          },
                        ),
                      ),
                     SingleChildScrollView(

                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                        const   Padding(
                            padding:  EdgeInsets.only(top: 350,left: 20),
                            child: MainTitile(label: 'Proparty Facilites'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: Container(
                         
                              height: 290,
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 2,color: Color.fromARGB(255, 156, 156, 156)),
                                       color: Color.fromARGB(255, 50, 47, 45),
                              ),
                              child: Column(
                                children: [
                                  
                                   const   Padding(
                            padding:  EdgeInsets.only(right:170,top: 10),
                            child: MainTitile(label: 'Proparty Facilites'),
                          ),
                                   Padding(
                                 padding: const EdgeInsets.only(top: 1,),
                                 
                                 child: FuturesFullIconWidgets(),
                               ),
                                               Padding(
                                                 padding: const EdgeInsets.only(left: 10,top: 30),
                                                 child: SizedBox( 
                                                  width: 
                                                  200,
                                                  height: 40,
                                                   child: MyButtonWidget(btnLabel: 'View All ',
                                                    ),),
                                                 ),
                                               
                                               
                                ],
                              ),
                            ),
                          ),
                         ],
                       ),
                     )
              ],
            ),
          
        ],
      ),
    );
  }
}




