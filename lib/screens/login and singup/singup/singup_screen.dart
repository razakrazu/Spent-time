import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/bottom_navigation/botton_navigation.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/controller/controller.dart';



class Singup_Screen extends StatelessWidget {
  const Singup_Screen({super.key});


  @override
  Widget build(BuildContext context) {
    // ClientsController clientController=Get.put(ClientsController());
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      // Obx(() {  return 
      
        Stack(
          children: [
            
            ClipPath(
            // clipper: ArrowClipper(400, 40, Edge.BOTTOM),
            // clipper: RoundedDiagonalPathClipper(),
                            // clipper: WaveClipperTwo(),
   clipper: DiagonalPathClipperTwo(),
      
    child: Container(
                height: 350,
               
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
                                    child: TextFormField(
                                    //  controller: clientController.nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(90),
                                        ),
                                        hintText: 'Full name',
                                        hintStyle: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        prefixIcon: const Icon(Icons.person,color: Color.fromARGB(255, 200, 200, 200),),
                                      ),
                                    ),
                                  ),
                                     Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      // controller: clientController.emailController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(90),
                                        ),
                                        hintText: 'Email',
                                        hintStyle: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        prefixIcon: const Icon(Icons.mail_outline,color: Color.fromARGB(255, 200, 200, 200),),
                                      ),
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      // controller: clientController.numberController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(90),
                                        ),
                                        hintText: 'Number',
                                        hintStyle: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        prefixIcon: const Icon(Icons.mail_outline,color: Color.fromARGB(255, 200, 200, 200),),
                                      ),
                                    ),
                                  ),
                                     Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: TextFormField(
                                      // controller: clientController.passwordController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(90),
                                        ),
                                        hintText: 'Password',
                                        hintStyle: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        prefixIcon: const Icon(Icons.lock,color: Color.fromARGB(255, 200, 200, 200),),
                                      ),
                                    ),
                                  ),
                                 
                               Padding(
                                 padding: const EdgeInsets.only(left: 80,right: 80,top: 29),
                                 child: ElevatedButton(onPressed: (){
                                  // clientController.addClient();
                                  // print(EmailController);
                          Get.to(BottomNavigationExample());
                          
                                 }, child:  Text('Singup', style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),   style: ElevatedButton.styleFrom(
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

