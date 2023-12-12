import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

class AddRooms extends StatelessWidget {
  AddRooms({super.key});
bool istrue= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: Text('ADD ROOMS',style:  TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),),centerTitle: true,backgroundColor: Color.fromARGB(255, 0, 0, 0),),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body:Stack(children: [
         ClipPath(
            // clipper: ArrowClipper(60, 400, Edge.BOTTOM),
            // clipper: RoundedDiagonalPathClipper(),
                            clipper: WaveClipperTwo(),
  //  clipper: DiagonalPathClipperTwo(),
      
    child: Container(
                height: 400,
               
                color: Color.fromARGB(255, 73, 1, 17),
 
              ),
            ),
        ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
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
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                      crossAxisCount: 1,  
                      crossAxisSpacing: 1,  
                      mainAxisSpacing: 10,  
                  ),  
                  itemBuilder: (BuildContext context, int index){  
                    return Container(
                      
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('lib/assets/klglff.jpg'),fit: BoxFit.cover,)
                      ),
                      child:const ClipRRect(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  
),
                      
                    );
                    // Image.network(images[index]);  
                  },  
                ),
          
                ),
          ),
          Hight40,
Row(
  children: [
   Expanded(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     const     Padding(
            padding:  EdgeInsets.only(left: 12,bottom: 5),
            child: Text('Description',style:  TextStyle(
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
                                              hintText: 'Enter property',
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
            child: Text('Description',style:  TextStyle(
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
                                              hintText: 'Enter property',
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

           
            SizedBox(height: 10,),
           Row(children: [
       Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),

                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                          
        Text('Ac',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),), 
                                          Width20, 
                                          Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
      ],),
           SizedBox(height: 10,),
           Row(children: [
       Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),

                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                          
        Text('Ac',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),), 
                                          Width20, 
                                          Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
      ],),
           SizedBox(height: 10,),
           Row(children: [
       Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),

                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
                                          
        Text('Ac',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
                                          Width20, 
                                           Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),), 
                                          Width20, 
                                          Checkbox(value: istrue, onChanged:(value) => (){}, ),
        Text('Wifi',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
      ],),
       const   SizedBox(height: 10,),
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
                                    padding: const EdgeInsets.only(left: 60,right: 60),
                                    child: ElevatedButton(onPressed: (){}, child: Text('Submit',style:  TextStyle(
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            ),),),
                                  ), 

        ],
        
      ),
     
      ],
      ),
    );
  }
}