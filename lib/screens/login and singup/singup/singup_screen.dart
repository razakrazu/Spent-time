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
    ClientsController clientController = Get.put(ClientsController());
    return Scaffold(
      backgroundColor: Colors.black,
      
      body:
      // Obx(() {  return 
      
        Stack(
          children: [
            
            ClipPath(

                        clipper: DiagonalPathClipperTwo(),    
    child:
     Container(
                height: 380,
               
                color:const Color.fromARGB(255, 124, 2, 26),
 
              ),
            ),
            
            
            Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 120),
            child: ClipPath(
               
              child: Container(
            
                  height: 590,
                  width: 350,
                 decoration: BoxDecoration(
                
                            border: Border.all(
                                color: const Color.fromARGB(255, 233, 231, 231)),
                            borderRadius: BorderRadius.circular(50),
                          ),
                child: 
                ListView(
                  children: [
                const    SizedBox(height: 20,),
                      Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Mytextformfieds(
                                      labal: 'Name', 
                                      icons: Icons.person,
                                       onChanged: clientController.nameController,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Mytextformfieds(
                                      labal: 'Email', 
                                      icons: Icons.mail_outline,
                                       onChanged: clientController.emailController,),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Mytextformfieds(
                                      labal: 'Number', 
                                      icons: Icons.call,
                                       onChanged: clientController.numberController,),
                                  ),
                                      Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Mytextformfieds(
                                      labal: 'password', 
                                      icons: Icons.lock,
                                       onChanged: clientController.passwordController,),
                                  ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 80,right: 80,top: 29),
                                 child: ElevatedButton(onPressed: (){
                                  // clientController.addClient();
                                  // clientController.singup();
                          Get.to(BottomNavigationScreen());
                          
                                 }, child:  Text('SING UP', style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),   style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 114, 114, 114),
                                    ),
                                    ),
                               ),   
                  ],
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



