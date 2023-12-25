import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: WhiteColor,
            )),
        title: const Text(
          'ROOM DETAILS',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 50,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    height: 340,
                    width: 360,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'lib/assets/klglff.jpg',
                                ),
                                fit: BoxFit.cover,
                              )),
                        );
                      },
                    ),
                  ),
                  Hight20,
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Container(
                      height: 490,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 109, 108, 108),
                      ),
                      child:const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 30),
                            child:  Text(
                              'HotalName : Dream villa',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 230, 228, 228),
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                            child: Textfiled(label: 'Bed : double',),
                          ),
                   
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                              child: Textfiled(label: 'Ac : nonAc ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                              child: Textfiled(label: 'Tv : yes ',),
                     
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                                     child: Textfiled(label:     'heater : yes ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                                 child: Textfiled(label:  'Food : yes ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                               child: Textfiled(label:      'swimingpool : yes ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                           child: Textfiled(label: 'Wifi : yes ',),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Textfiled(label: 'Amount : 3000 ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                       child: Textfiled(label:   'parking : yes ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                             child: Textfiled(label: 'Workout : yes ',),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 10),
                             child: Textfiled(label:'jogging : yes ',),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


