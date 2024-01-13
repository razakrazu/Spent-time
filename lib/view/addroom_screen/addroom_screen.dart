import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:spent_time/controller/addroom_controller/addroom_controller.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/model/addroom_model/model.dart';
import 'package:spent_time/view/addroom_screen/widgets/addroom_textfeild.dart';
import 'package:spent_time/view/addroom_screen/widgets/adress_textfeild_widget.dart';
import 'package:spent_time/view/addroom_screen/widgets/check_box_widget.dart';
 

class AddRooms extends StatelessWidget {
  AddRooms({super.key});


  @override
  Widget build(BuildContext context) {
RoomDatas roomcontroller = Get.put(RoomDatas());

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
          automaticallyImplyLeading:false,
        title: const Text(
          'ADD ROOM',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 124, 2, 26),
      ),
      body: Column(
        children: [
          
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.transparent,
                    ),
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                       mainAxisExtent: 160,
                        mainAxisSpacing: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage('lib/assets/klglff.jpg'),
                                fit: BoxFit.cover,
                              )),
                          child: const ClipRRect(
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
                    AddRoomTextfFeld(
                      textfieldtitle: 'Name',
                       hintText: 'Enter propary name',
                        onTap: roomcontroller.propertyname,
                    ),
                   AddRoomTextfFeld(textfieldtitle: 'Price', hintText: 'Enter Room rate', onTap: roomcontroller.properyprice,),
                  ],
                ),
                Hight20,
                Row(
                  children: [
                    AddRoomTextfFeld(textfieldtitle: 'City', hintText: 'Enter Your city', onTap: roomcontroller.city,),
                   AddRoomTextfFeld(textfieldtitle: 'State', hintText: 'Enter your state', onTap: roomcontroller.state,),
                   
                  ],
                ),
                Hight10,
                Row(
                  children: [

                  AddRoomTextfFeld(textfieldtitle: 'Pincode', hintText: 'Enter your pincode', onTap: roomcontroller.pincode,),
                   AddRoomTextfFeld(textfieldtitle: 'Room categary', hintText: 'Enter types room', onTap: roomcontroller.roomtype,),
                  ],
                ),
               AdressTextField(fieldText: 'Proparty Adress',hintText: 'Enter your adreess', onTap: roomcontroller.adress,),
              


            // Row(
            //         children: [
            //               MyCheckBoxWidget( checkBoxTitle: 'Pool',onTap: roomcontroller.pool.value =!roomcontroller.pool.value , value: roomcontroller.pool,),
            //           Width20,
                        
            //       MyCheckBoxWidget( checkBoxTitle: 'Food',onTap: roomcontroller.food.value =!roomcontroller.food.value , value: roomcontroller.food,),
            //           Width30,
            //                   MyCheckBoxWidget(checkBoxTitle: 'Wifi',onTap:  roomcontroller.wifi.value =!roomcontroller.wifi.value, value: roomcontroller.wifi,),
                                
                
            //           Width10,
            //         ],
            //       ),
                
            //     Hight10,
            //     Row(
            //       children: [
               
            //         MyCheckBoxWidget( checkBoxTitle: 'power Backup',onTap:  roomcontroller.powerBuckup.value =!roomcontroller.powerBuckup.value, value: roomcontroller.powerBuckup,),
            //         Width10,
            //     MyCheckBoxWidget(checkBoxTitle: 'Parking',onTap:  roomcontroller.Parking.value =!roomcontroller.Parking.value, value: roomcontroller.Parking,),
            //         Width20,
            //   MyCheckBoxWidget( checkBoxTitle:  'Tv',onTap:  roomcontroller.Tv.value =!roomcontroller.Tv.value, value: roomcontroller.Tv,),
            //       ],
            //     ),
            //     Hight10,
            //     Row(
            //       children: [
                   
            //         MyCheckBoxWidget( checkBoxTitle: 'Meeting Room',onTap:  roomcontroller.meetingroom.value =!roomcontroller.meetingroom.value, value: roomcontroller.meetingroom,),
            //         Width10,
            //       MyCheckBoxWidget( checkBoxTitle: 'Heater',onTap:  roomcontroller.heater.value =!roomcontroller.heater.value, value: roomcontroller.heater,),
            //         Width20,
            //      MyCheckBoxWidget( checkBoxTitle:  'Ac',onTap:  roomcontroller.ac.value =!roomcontroller.ac.value, value: roomcontroller.ac,),
                  
            //       ],
            //     ),
                Hight10,
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Color.fromARGB(255, 200, 195, 195),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
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
                     style: TextStyle(color: WhiteColor),
                  ),
                ),
                Hight20,
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Map',
                    style: TextStyle(
                      color: Color.fromARGB(255, 200, 195, 195),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: WhiteColor),
                      borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                                image: AssetImage('lib/assets/hkejkfk.png'),
                                fit: BoxFit.cover,
                              )
                    ),
                  ),
                ),
                Hight10,
                Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110),
                  child: ElevatedButton(
                    onPressed: () async {
// final clientInfo = RoomDataModel(
//   roomtype: roomcontroller.roomtype.text, 
// city: roomcontroller.city.text,
//  address: roomcontroller.adress.text,
//   propertyname: roomcontroller.propertyname.text, 
//   pincode: roomcontroller.pincode.toString(), 
//   propertyPrice: roomcontroller.properyprice.toString(), 
//   state: roomcontroller.state.text,
//    discription: roomcontroller.description.text,
//     Wifi: 'clientData'
//     , food: 'clientData',
// );
// bool success = await roomcontroller.addRooms(clientInfo);
//     try {
      
//       await FirebaseFirestore.instance.collection('clientData').add(
//         clientInfo.toJson(), 
//       );

//       print('Room added successfully');
//     } catch (e) {
//       print('Error adding room: $e');
//     }


                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
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





