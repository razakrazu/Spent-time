import 'package:flutter/material.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: BlackColor,
      appBar: AppBar(title: Text('detils'),),
      body: ListView(
        children: [
          Hight20,
           Container(
            
             height: 250,
             
         
         
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
                        
                    width: 500,
                     
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('lib/assets/klglff.jpg'),fit: BoxFit.cover,)
                        ),
                       
                        
                      );
                       
                    },  
                  ),
           ),
           Hight20,
           Container(
            height: 600,
          
            color: Colors.grey,)
          
        ],
      ),
    );
  }
}