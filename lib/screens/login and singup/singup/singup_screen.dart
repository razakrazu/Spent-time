import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/bottom_navigation/botton_navigation.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/controller.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/widgets/textformfild.dart';

class Singup_Screen extends StatelessWidget {
  const Singup_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final clientController = Get.put(ClientSignUpController());
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.black,

      body:
          // Obx(() {  return

          Stack(
        children: [
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 380,
              color: const Color.fromARGB(255, 124, 2, 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
            child: ClipPath(
              child: Container(
                height: 600,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 233, 231, 231)),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Form(
                  key: formkey,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Mytextformfieds(
                          labal: 'Name',
                          icons: Icons.person,
                          onChanged: clientController.nameController,
                             maxLength: 30,
                           texttype: TextInputType.text,
                        ),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Mytextformfieds(
                          labal: 'Email',
                          icons: Icons.mail_outline,
                          onChanged: clientController.emailController,
                           texttype: TextInputType.text,
                              maxLength: 30,
                       
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Mytextformfieds(
                          labal: 'Number',
                          icons: Icons.call,
                          onChanged: clientController.numberController,
                           texttype: TextInputType.number,
                           maxLength: 10,
                        
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Mytextformfieds(
                          labal: 'password',
                          icons: Icons.lock,
                          onChanged: clientController.passwordController,
                           texttype: TextInputType.text,
                              maxLength: 30,
                       
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 80, right: 80, top: 29),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(BottomNavigationScreen());
                            if (formkey.currentState!.validate()) {
                              ClientSignUpController.instance.registerUser(
                                  clientController.emailController.text.trim(),
                                  clientController.passwordController.text .trim());

                            }
                          },
                          child: const  Text(
                            'SING UP',
                            style:  TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 114, 114, 114),
                          ),
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
      // }),
    );
  }
}
