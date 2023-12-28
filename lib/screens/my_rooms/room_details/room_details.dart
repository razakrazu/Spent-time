import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/futures_full_Icon_widgets.dart';
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
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                          
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(20),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 350,left: 20),
                            child: MainTitile(label: 'Proparty Facilites'),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20),
                             
                             child: FuturesFullIconWidgets(),
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


