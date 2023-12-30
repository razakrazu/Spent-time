import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/authentication_cantroller.dart';
import 'package:spent_time/screens/settings/logout/logout_screen.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: DiagonalPathClipperTwo(),

            child: Container(
              height: 150,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Hight40,
                TextButton.icon(
                  onPressed: () {
                       Get.to( const LogoutScreen());
                  },
                  icon: const Icon(
                    Icons.power_settings_new_outlined,
                    color: WhiteColor,
                    size: 30,
                  ),
                  label: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Hight10,
                TextButton.icon(
                  onPressed: () {
                  AuthenticationRepositry.instance.login();
                  },
                  icon: const Icon(
                    Icons.info_outline,
                    color: WhiteColor,
                    size: 30,
                  ),
                  label: const Text(
                    'About',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Hight10,
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.restart_alt_rounded,
                    color: WhiteColor,
                    size: 30,
                  ),
                  label: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Hight10,
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: WhiteColor,
                    size: 30,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Hight10,
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.privacy_tip_outlined,
                      color: WhiteColor,
                      size: 30,
                    ),
                    label: const Text(
                      'privacy',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Hight10,
              ],
            ),
          )
        ],
      ),
    );
  }
}
