import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

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
            icon: Icon(
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
              child: Column(
                children: [
                  Container(
                    height: 200,
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
                          width: double.infinity,
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
                  Container(
                    height: 490,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 109, 108, 108),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 30),
                          child: Text(
                            'HotalName : Dream villa',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Bed : double ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Ac : nonAc ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Tv : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'heater : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Food : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'swimingpool : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Wifi : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Amount : 3000 ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'parking : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'Workout : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            'jogging : yes ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 230, 228, 228),
                            ),
                          ),
                        ),
                      ],
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
