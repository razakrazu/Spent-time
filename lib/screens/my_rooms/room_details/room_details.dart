import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: BlackColor,
      appBar: AppBar(leading: IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back,color: WhiteColor,)),title: Text(
                                      'ROOM DETAILS',
                                      style: TextStyle(
                                         color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        
                                      ),
                                    ),centerTitle: true,backgroundColor:    const Color.fromARGB(255, 124, 2, 26),),
      body: Column(
        children: [
            ClipPath(
                            clipper: WaveClipperOne(),
  
      
    child:
     Container(
                height: 50,
               
                color:const Color.fromARGB(255, 124, 2, 26),
 
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
child:                 Column(
  children: [
        Container(
    
                      
    
                       height: 400,
    width: double.infinity,
                      
    
                       child: GridView.builder(  
    
                               scrollDirection: Axis.horizontal,
    
                              itemCount: 6,  
    
                              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(  
    
                                  crossAxisCount: 1,  
    
                                  crossAxisSpacing: 1,  
    
                                  mainAxisSpacing: 10,  
    
                              ),  
    
                              itemBuilder: (BuildContext context, int index){  
    
                                return Container(
    
                                  width: double.infinity,
    
                                  decoration: BoxDecoration(
    
                                    borderRadius: BorderRadius.circular(20),
    
                                    image:const DecorationImage(
    
              
    
                                      
    
                                      image: AssetImage('lib/assets/klglff.jpg'),fit: BoxFit.cover,)
    
                                  ),
    
                                 
    
                                  
    
                                );
    
                                 
    
                              },  
    
                            ),
    
                     ),
                     Hight20,
                     Container(height: 500,
                     width: 30,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                                          color: const Color.fromARGB(255, 109, 108, 108),

                     ),
                     ),
  ],
),
                //shammad 
                //shammad 222
                //original project testing with git hub

              
            ),
          ),
        ],
      ),
    );
  }
}



