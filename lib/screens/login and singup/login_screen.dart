import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/controller.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/signup_form_controller.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/singup_screen.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/widgets/textformfild.dart';
import 'package:spent_time/screens/login%20and%20singup/widgets/show_modal_bottom_sheet.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final clientController = Get.put(ClientSignUpController());
    final formkey = GlobalKey<FormState>();
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
                          color: Color.fromARGB(255, 183, 175, 175)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 500,
                    width: 300,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                           child: Mytextformfieds(
                          labal: 'Email',
                          icons: Icons.mail_outline,
                          onChanged: clientController.emailController,
                           texttype: TextInputType.text,
                              maxLength: 30,
                         validation:(value)=> SignUpValidater.validateEmptyText('Email', value),
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Mytextformfieds(
                          labal: 'password',
                          icons: Icons.lock,
                          onChanged: clientController.passwordController,
                           texttype: TextInputType.text,
                           maxLength: 30,
                             validation:(value)=> SignUpValidater.validateEmptyText('Password', value),
                       
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: TextButton(
                            onPressed: () {
                              show_Modal_Bottom_Sheet(context);
                            },
                            child: const Text('Forget Password',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 80,
                            right: 80,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            child: Text(
                              'Log In',
                              style: const TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 83, 83, 83),
                                 shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ) ,                 
                                side: BorderSide(width: 1,color:Color.fromARGB(255, 202, 202, 202),
                           ),
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