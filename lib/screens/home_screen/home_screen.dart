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
                              prefixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.close,color: WhiteColor,))
                             
                            ),
                          ),
                        ),
                        
          ),
SizedBox(height: 30,),
         Expanded(
           child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    
                  
                    return Card(
                      child: Container(
                        height: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Image.asset('lib/assets/ujo.jpg',
                                  fit: BoxFit.fill,),
                                  
                                  
                            
                                ),
                              
                                Text(
                                  'Dream villa',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Caliut',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 3,
                    mainAxisExtent: 200,
                    
                  ),
                ),
              ),
         ),
        
SizedBox(height: 30,),

        ],
      ),
      
      ),
    );
  }
}