import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

class AddRooms extends StatelessWidget {
 AddRooms({super.key});
bool istrue= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(leading: IconButton(onPressed: (){
        Get.back();
      }, icon: const Icon(Icons.arrow_back,color: WhiteColor,)),title:const Text(
                                      'MY ROOMS',
                                      style: TextStyle(
                                         color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        
                                      ),
                                    ),centerTitle: true,backgroundColor:    const Color.fromARGB(255, 124, 2, 26),),
      body:Column(children: [
        ClipPath(
   clipper: WaveClipperOne(),
  
      
    child:
     Container(
                height: 50,
               
                color:const Color.fromARGB(255, 124, 2, 26),
 
              ),
            ),
       
        Expanded(
          child: ListView(
          children: [
            
           
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                    height: 170,
                    
                    
                    decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.transparent
                      ,
                    ),
            
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
                        
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          image:const DecorationImage(image: AssetImage('lib/assets/klglff.jpg'),fit: BoxFit.cover,)
                        ),
                        child:const ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          
        ),
                        
                      );
                    },  
                  ),
            
                  ),
            ),
            Hight30,
        Row(
          children: [
           Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const     Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('Name',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                
                                                hintText: 'Enter Property Name',
                                                hintStyle: const TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
            
              Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const    Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('Price',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter Your amount',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
          ],
        ),
        Hight20,
        Row(
          children: [
           Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const     Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('City',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter Your city',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
            
              Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const    Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('State',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter your state',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
          ],
        ),
        Hight10,
        Row(
          children: [
           Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const     Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('Pincode',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter your pincode',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
            
              Expanded(
              child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const    Padding(
              padding:  EdgeInsets.only(left: 12,bottom: 5),
              child: Text('Room categary',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter types room',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),
          ],
              ) ,
            ),
          ],
        ),
              const    Padding(
              padding:  EdgeInsets.only(left: 15,bottom: 5),
              child: Text('Proparty Adress',style:  TextStyle(
                                                color: Color.fromARGB(255, 200, 195, 195),
                                              ),),
            ),
            Padding(
                                            padding: const EdgeInsets.only(left:10,right: 10),
                                            child: TextFormField(
                                              // controller: clientController.emailController,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Enter your adreess',
                                                hintStyle: const TextStyle(
                                                  color: Color.fromARGB(255, 133, 133, 133),
                                                ),
                                              ),
                                            ),
                                          ),     
              Hight10,
             Row(children: [
              Width10,
               Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('Swiming pool',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
        
                                            Width10, 
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                            
              const  Text('Food',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
                                            Width30, 
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('Wifi',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),), 
                                            Width10, 
                      
              ],),
             Hight10,
             Row(children: [
              Width10,
               Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('power Backup',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
        
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                            
              const  Text('Parking',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
                                            Width20, 
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('Tv',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),), 
                                            Width10, 
                                       
          
              ],),
           Hight10,
             Row(children: [
              Width10,
               Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('Meeting Room',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
        
                                            
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                            
              const  Text('Heater',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
                                            Width20, 
                                             Checkbox(value: istrue, onChanged:(value) => (){}, ),
               const Text('Ac',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),), 
                                            Width20, 
                                      
              ],),
              Hight10,
                                          const      Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Text('Description',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
                  ),
                         Padding(
                                      padding: const EdgeInsets.only(left:10,right:  10),
                                      child: TextFormField(
                                        // controller: clientController.emailController,
                                        decoration: InputDecoration(   
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          hintText: 'Add description',
                                          hintStyle: const TextStyle(
                                            color: Color.fromARGB(255, 133, 133, 133),
                                            height: 5,
                                          ),
                                        ),
                                      ),
                                    ), 
                                    Hight20,
                                                            const      Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Text('Map',style:  TextStyle(
                                              color: Color.fromARGB(255, 200, 195, 195),
                                            ),),
                  ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: WhiteColor),
                                          borderRadius: BorderRadius.circular(10),
        
                                        ),
                                      ),
                                    ),
                                    Hight10,
                                    Padding(
                                      padding: const EdgeInsets.only(left: 110,right: 110),
                                      child: ElevatedButton(  onPressed: (){}, child:const Text('Submit',style:  TextStyle(
                                                color: Color.fromARGB(255, 0, 0, 0),
                                                
                                              ),),
                                               style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(255, 171, 169, 169),
                                      ),
                                              ),
                                    ), 
        
          ],
          
              ),
        ),
     
      ],
      ),
    );
  }
}