import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';


class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(child:Column(
        children: [
          Container(
            child:     Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30,top: 50),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 183, 183, 183),
                              ),
                              prefixIcon:IconButton(onPressed: (){}, icon:const Icon(Icons.close,color: WhiteColor,))
                             
                            ),
                          ),
                        ),
                        
          ),
    const      SizedBox(height: 30,),
          Row(children: [
   const         SizedBox(width: 10,),
    Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 103, 103, 102)
      ),
      child:const Row(
        children: [
          SizedBox(width: 5,),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('lib/assets/jgvjvjh.jpeg'),
          ),
          SizedBox(width: 10,),
          Text(
                                      'Chennai',
                                      style: TextStyle(
                                        fontSize: 18,
                                         color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
        ],
      ),
    )
          ],),
const SizedBox(height: 30,),
         Expanded(
           child: Center(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                   physics: const PageScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    
                  
                    return 
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
const SizedBox(width: 20,),
              const     SizedBox( child:   Text(
                                      'Normal Rooms',
                                      style: TextStyle(
                                        fontSize: 18,
                                         color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),),
                      Container(
                        
          margin: EdgeInsets.symmetric(horizontal: 10),
                                      
decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(17),
color: Color.fromARGB(255, 68, 65, 65),
),

                                      
                                       child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                         Image(
                                          
                                          height: 150,
                                          width: 240,
                                          
                                          image: AssetImage('lib/assets/klglff.jpg',),fit: BoxFit.fill,
                                          ),
                                         Text(
                                      'Hotal:Dream villa',
                                      style: TextStyle(
                                        fontSize: 18,
                                         color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                               Text(
                                          'Place:Calicut',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                        
                                        ],
                                       ),  
                                     
                                      
                                      
                                
                                    ),
                    ],
                  );

                  
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 1,);
                  }
             
                ),
              ),
         ),
        
SizedBox(height: 10,),

        ],
      ),
      
      ),
    );
  }
}