import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/my_rooms/room_details/proparty_facilitys.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/futures_full_Icon_widgets.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/icon_button_widget.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/maintitle_discriptiontext.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/my_button_widget.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/title_subtitle.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                              fit: BoxFit.fill)),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 32,
                            blurRadius: 50,
                          )
                        ],
                        color: Color.fromARGB(255, 51, 50, 48).withOpacity(0.5),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 190, top: 20),
                          child: Text(
                            'Dream Villa',
                            style: const TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 230, 228, 228),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 180, top: 20),
                          child: MainTitle(label: 'Proparty Facilites'),
                        ),
                        Hight20,
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 1,
                          ),
                          child: FuturesFullIconWidgets(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MyButtonWidget(
                              btnLabel: 'View All ',
                            ),
                          ),
                        ),
                        Hight30,
                        IconButton(
                            onPressed: () {
                              Get.to(PropartyFacilitesScreen());
                            },
                            icon: Icon(Icons.add)),
                        const Padding(
                          padding: EdgeInsets.only(right: 220, top: 10),
                          child: MainTitle(label: 'Date & Guests'),
                        ),
                        Hight10,
                        Container(
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(115, 65, 64, 64)
                                      .withOpacity(0.1)),
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromARGB(255, 127, 127, 127)
                                  .withOpacity(0.2)),
                          child: const Row(
                            children: [
                              Width20,
                              Icon(
                                Icons.calendar_month,
                                color: WhiteColor,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: MyTitle_SubTitleWidget(
                                  maintitle: 'Calendar Month',
                                  subtitle: 'Today Tomorrow',
                                ),
                              ),
                              Width20,
                              Icon(
                                Icons.person,
                                color: WhiteColor,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: MyTitle_SubTitleWidget(
                                  maintitle: 'Room',
                                  subtitle: 'Guest',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Hight10,
                        const DiscriptionText_MainTitle(
                          discriptiontext:
                              'Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer ',
                          maintitle: 'About This Hotal',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 190, top: 40),
                          child: MainTitle(label: 'Condect with Owner '),
                        ),
                        Hight20,
                        const SizedBox(
                          width: 320,
                          child: IconButtonWidgets(
                            buttonIcon: Icons.call,
                            buttonTitle: 'Call Now ',
                          ),
                        )
                      ]),
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
