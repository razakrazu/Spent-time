import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/authentication_cantroller.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';
import 'package:spent_time/screens/profile/profile_screen.dart';
import 'package:spent_time/screens/settings/logout/logout_screen.dart';
import 'package:spent_time/screens/widgets/frofile_manu.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      appBar: AppBar(
        title: const Text(
          'SETTINGS',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 150,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(500),
                              child:
                                  Image(image: AssetImage('lib/assets/fjgk.jpg'))),
                        ),
                         Positioned(
                          bottom: 0,
                          right: 0,
                           child: Container(
                                   width: 34,
                                   height: 35,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(100),
                                       color: WhiteColor.withOpacity(0.2)),
                                   child: Icon(
                                     Icons.edit,
                                     color: WhiteColor,
                                   ),
                                 ),
                         ),
                      ],
                    ),
                    Hight10,
                    MainTitile(label: 'Amal'),
                    Hight10,
                    ElevatedButton(
                        onPressed: () {
                          Get.to(ProfileScreen());
                        }, child: Text('Edit profile')),
                  ],
                ),
              ),
              Hight40,
              ProfileManuWidget(
                profileIcon: Icons.settings,
                profileTitle: 'Settings',
              ),
              ProfileManuWidget(
                profileIcon: Icons.notes_sharp,
                profileTitle: 'About',
              ),
              ProfileManuWidget(
                profileIcon: Icons.share,
                profileTitle: 'Share',
              ),
              Hight20,
              ProfileManuWidget(
                profileIcon: Icons.privacy_tip_outlined,
                profileTitle: 'privacy',
              ),
              ProfileManuWidget(
                profileIcon: Icons.power_settings_new_outlined,
                profileTitle: 'LogOut',
              ),
            ],
          )
        ],
      ),
    );
  }
}
