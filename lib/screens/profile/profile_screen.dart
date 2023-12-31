import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/controller.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/widgets/textformfild.dart';
import 'package:spent_time/screens/my_rooms/room_details/widgets/textfeilds.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final clientController = Get.put(ClientSignUpController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      backgroundColor: BlackColor,
      body: Stack(
        children: [
         
                 ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  height: 250,
                  color: const Color.fromARGB(255, 124, 2, 26),
                ),
              ),
              Padding(
                    padding: const EdgeInsets.only(top: 20,),
                    child: SingleChildScrollView(
                      child: Column(
                        
                        children: [
                          Stack(
                            children: [
                              
                              
                                Container(
                                  height: 120,
                                  width: 120,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(image:  AssetImage('lib/assets/iug.jpeg'),
                                  fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(400),
                                  
                                 ),
                                 
                                    ),
                              
                               Positioned(
                                bottom: 0,
                                right: 0,
                                 child: Container(
                                         width: 34,
                                         height: 35,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(100),
                                             color: BlackColor.withOpacity(0.4)),
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
                             
                              }, child: Text('Edit profile')),
                              Hight30,
                               Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfieds(
                                labal: 'Name',
                                icons: Icons.person,
                                onChanged: clientController.nameController,
                                   maxLength: 15,
                                 texttype: TextInputType.text,
                              ),
                              
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfieds(
                                labal: 'Email',
                                icons: Icons.mail_outline,
                                onChanged: clientController.emailController,
                                 texttype: TextInputType.text,
                                    maxLength: 30,
                             
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfieds(
                                labal: 'Number',
                                icons: Icons.call,
                                onChanged: clientController.numberController,
                                 texttype: TextInputType.number,
                                 maxLength: 10,
                              
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfieds(
                                labal: 'password',
                                icons: Icons.lock,
                                onChanged: clientController.passwordController,
                                 texttype: TextInputType.text,
                                    maxLength: 12,
                             
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 60, right: 60, top: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Get.to(BottomNavigationScreen());
                                  // if (formkey.currentState!.validate()) {
                                  //   ClientSignUpController.instance.registerUser(
                                  //       clientController.emailController.text.trim(),
                                  //       clientController.passwordController.text .trim());
                    
                                  // }
                                },
                                child: const  Text(
                                  'Update',
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
                  Hight20,
              
            ],
          ),
        
      
    );
  }
}