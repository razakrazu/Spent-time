import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/singup_screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body:
          //  Obx(() {  return
          Stack(
        children: [
          ClipPath(
            clipper: ArrowClipper(400, 0, Edge.RIGHT),
            child: Container(
              height: 1000,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 200),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 500,
                    width: 300,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.mail_outline,
                                color: Color.fromARGB(255, 200, 200, 200),
                              ),
                            ),
                            style: TextStyle(color: WhiteColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              prefixIcon: const Icon(
                                Icons.lock_outlined,
                                color: Color.fromARGB(255, 200, 200, 200),
                              ),
                            ),
                            style: TextStyle(color: WhiteColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('forgot password',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 80,
                            right: 80,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Log In',
                              style: const TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 76, 73, 73),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            onPressed: () {
                              Get.to(const Singup_Screen());
                            },
                            child: const Text('Create New Account',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
      // }),
    );
  }
}
