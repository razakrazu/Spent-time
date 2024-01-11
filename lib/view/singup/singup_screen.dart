import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/controller/signup_controller/controller.dart';
import 'package:spent_time/sarvice/signup_form_sarvice/signup_form_sarvice.dart';
import 'package:spent_time/view/singup/widgets/textformfild.dart';

    ClientSignUpController clientController = Get.put(ClientSignUpController());

class Singup_Screen extends StatelessWidget {
  const Singup_Screen({super.key});

  @override
  Widget build(BuildContext context) {

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
          // Obx(
          //   ()=> 
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
              child: ClipPath(
                child: Container(
                  height: 600,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,
                        color: Color.fromARGB(255, 188, 185, 185)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: clientController.signupFormKey,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Name',
                            icons: Icons.person,
                            onChanged: clientController.nameController,
                               maxLength: 15,
                             texttype: TextInputType.text,
                          validation:(value)=> SignUpValidater.validateName(value),
          
                          ),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Email',
                            icons: Icons.mail_outline,
                            onChanged: clientController.emailController,
                             texttype: TextInputType.text,
                                maxLength: 30,
                             validation:(value)=> SignUpValidater.validateEmail(value),
          
                         
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Number',
                            icons: Icons.call,
                            onChanged: clientController.numberController,
                             texttype: TextInputType.number,
                             maxLength: 10,
                           validation:(value)=> SignUpValidater.validateNumber(value),
          
                          
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'password',
                            icons: Icons.lock,
                            onChanged: clientController.passwordController,
                             texttype: TextInputType.text,
                                maxLength: 12,
                                 validation:(value)=> SignUpValidater.validatePassword(value),
                         
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 60, right: 60, top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              // Get.to(BottomNavigationScreen());
                              if (clientController.signupFormKey.currentState!.validate()) {
                                ClientSignUpController.instance.registerUser(
                                    clientController.emailController.text.trim(),
                                    clientController.passwordController.text .trim());
          
                              }
                            },
                            child: const  Text(
                              'SINGUP',
                              style:  TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 114, 114, 114),
                              shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ) ,                 
                                  side: BorderSide(width: 1,color:Color.fromARGB(255, 202, 202, 202),
                             ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          // ),
        ],
      ),
      // }),
    );
  }
}
