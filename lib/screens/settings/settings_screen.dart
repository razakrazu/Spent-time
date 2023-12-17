import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
appBar: AppBar(leading: IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back,color: WhiteColor,)),
      title: Text(
       'SETTINGS',
             style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                   fontWeight: FontWeight.bold,
             ),                 
                      ),
    centerTitle: true,backgroundColor:    const Color.fromARGB(255, 124, 2, 26),),  
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ClipPath(
            
   clipper: DiagonalPathClipperTwo(),
  
      
    child:
     Container(
                height: 150,
               
                color:const Color.fromARGB(255, 124, 2, 26),
 
              ),
            ),
       Padding(
         padding: const EdgeInsets.only(left: 10),
         child: Column(
          children: [
             Hight40,
          TextButton.icon(onPressed: (){}, icon: Icon(Icons.privacy_tip,color: WhiteColor,size: 30,), label:  Text(
         'About',
               style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                     fontWeight: FontWeight.bold,
               ),                 
                        ),),
                        Hight10,
                          TextButton.icon(onPressed: (){}, icon: Icon(Icons.restart_alt_rounded,color: WhiteColor,size: 30,), label:  Text(
         'Reset',
               style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                     fontWeight: FontWeight.bold,
               ),                 
                        ),),
                        Hight10,
                          TextButton.icon(onPressed: (){}, icon: Icon(Icons.share,color: WhiteColor,size: 30,), label:  Text(
         'Share',
               style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                     fontWeight: FontWeight.bold,
               ),                 
                        ),),

                        Hight10,
                               TextButton.icon(onPressed: (){}, icon: Icon(Icons.share,color: WhiteColor,size: 30,), label:  Text(
         'Share',
               style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                     fontWeight: FontWeight.bold,
               ),                 
                        ),),
                                                Hight10,

                          TextButton.icon(onPressed: (){}, icon: Icon(Icons.privacy_tip,color: WhiteColor,size: 30,), label:  Text(
         'privacy',
               style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                     fontWeight: FontWeight.bold,
               ),                 
                        ),),
                        Hight10,
                   
          ],
         ),
       )
      
      ],),
    );
  }
}