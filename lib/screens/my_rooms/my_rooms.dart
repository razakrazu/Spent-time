import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/room_details.dart';

class MyRoomsScreen extends StatelessWidget {
  const MyRoomsScreen({super.key});
// final onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      appBar: AppBar(
          automaticallyImplyLeading:false,
        title: const Text(
          'MY ROOMS',
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
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Slidable(
                startActionPane: ActionPane(
                  motion: ScrollMotion(),
                   dismissible: DismissiblePane(onDismissed: () {}),
                   children: [
        //           Slidable(child: 
        //         //  onPressed: doNothing,
        // backgroundColor: Color(0xFFFE4A49),
        // foregroundColor: Colors.white,
        // icon: Icons.delete,
        // label: 'Delete',
        //           ),
                ]),

                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Card(
                          color: const Color.fromARGB(255, 209, 208, 208),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('lib/assets/klglff.jpg'),
                                        fit: BoxFit.cover),
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
                                    onTap: () => Get.to(const RoomDetails()),
                                    title: const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dream villa',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Place:Calicut',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Date:20/07/23',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Hight10,
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}
