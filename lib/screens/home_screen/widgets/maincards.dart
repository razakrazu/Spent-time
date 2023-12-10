import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                
decoration: BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(20)),
color: Color.fromARGB(255, 68, 65, 65),

),
                                
                                 child: Column(
                                  children: [
                                   Image(
                                    height: 100,
                                    width: 150,
                                    
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
                               
                                
                                
                          
                              );
  }
  }
