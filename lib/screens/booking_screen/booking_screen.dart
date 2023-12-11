import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';

class AddRooms extends StatelessWidget {
  const AddRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlackColor,
      body:SafeArea(child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 40),
            child: Container(
                  height: 300,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 192, 191, 191),
                  ),
          
                child: GridView.builder(  
                  itemCount: 6,  
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                      crossAxisCount: 2,  
                      crossAxisSpacing: 10,  
                      mainAxisSpacing: 5,  
                  ),  
                  itemBuilder: (BuildContext context, int index){  
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image(
                        height: 50,
                        width: 30,
                    
                        image: AssetImage('lib/assets/hjhjh.jpeg'
                        ),
                        fit:BoxFit.fitWidth,),
                    );
                    // Image.network(images[index]);  
                  },  
                ),
          
                ),
          ),
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const   SizedBox(height: 10,),
          const      Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('Property Name',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
                ),
                       Padding(
                                    padding: const EdgeInsets.only(left:10,right:  200),
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
                                      const   SizedBox(height: 10,),
                                        const      Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('Room Price',style:  TextStyle(
                                            color: Color.fromARGB(255, 200, 195, 195),
                                          ),),
                ),
                       Padding(
                                    padding: const EdgeInsets.only(left:10,right:  200),
                                    child: TextFormField(
                                      // controller: clientController.emailController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        hintText: 'Room Rate',
                                        hintStyle: const TextStyle(
                                          color: Color.fromARGB(255, 133, 133, 133),
                                        ),
                                      ),
                                    ),
                                  )
                                   
              ],
            ),
            
        ],
      ),),
    );
  }
}