import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spent_time/controller/addroom_controller/addroom_controller.dart';
import 'package:spent_time/controller/addroom_controller/image_controller.dart';
import 'package:spent_time/core/color.dart';
import 'package:spent_time/core/constants.dart';
import 'package:spent_time/model/addroom_model/model.dart';
import 'package:spent_time/view/addroom_screen/widgets/addroom_textfeild.dart';
import 'package:spent_time/view/addroom_screen/widgets/adress_textfeild_widget.dart';
import 'package:spent_time/view/addroom_screen/widgets/checkbox_text.dart';
import 'package:spent_time/view/addroom_screen/widgets/discription_widget.dart';
import 'package:spent_time/view/addroom_screen/widgets/map_widget.dart';

List<XFile>? images = [];
List<String> listImagePath = [];
var downloadUrlImage = 0.obs;

class AddRooms extends StatelessWidget {
  AddRooms({super.key});

  @override
  Widget build(BuildContext context) {
    RoomDatas roomcontroller = Get.put(RoomDatas());
    ImageController imagepick = Get.put(ImageController());

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                Stack(
                  children: [
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.transparent,
                          ),
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: imagepick.downloadUrlImage.value,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisExtent: 160,
                              mainAxisSpacing: 2,
                            ),
                            itemBuilder: (context, index) {
                              return imagepick.downloadUrlImage.value == ''
                                  ? Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              255, 125, 121, 121)),
                                      child: const ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                    )
                                  : Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1),
                                        color: const Color.fromARGB(
                                            255, 124, 121, 121),
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: Image.file(
                                        File(imagepick.listImagePath[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    );
                            },
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 330,
                      child: GestureDetector(
                        onTap: () {
                          imagepick.selectMultipleImage();
                        },
                        child: Container(
                          width: 34,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: WhiteColor.withOpacity(0.3)),
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: WhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Hight30,
                Row(
                  children: [
                    AddRoomTextfFeld(
                      textfieldtitle: 'Name',
                      hintText: 'Enter propary name',
                      onTap: roomcontroller.propertyname,
                    ),
                    AddRoomTextfFeld(
                      textfieldtitle: 'Price',
                      hintText: 'Enter Room rate',
                      onTap: roomcontroller.properyprice,
                    ),
                  ],
                ),
                Hight20,
                Row(
                  children: [
                    AddRoomTextfFeld(
                      textfieldtitle: 'City',
                      hintText: 'Enter Your city',
                      onTap: roomcontroller.city,
                    ),
                    AddRoomTextfFeld(
                      textfieldtitle: 'State',
                      hintText: 'Enter your state',
                      onTap: roomcontroller.state,
                    ),
                  ],
                ),
                Hight10,
                Row(
                  children: [
                    AddRoomTextfFeld(
                      textfieldtitle: 'Pincode',
                      hintText: 'Enter your pincode',
                      onTap: roomcontroller.pincode,
                    ),
                    AddRoomTextfFeld(
                      textfieldtitle: 'Room categary',
                      hintText: 'Enter types room',
                      onTap: roomcontroller.roomtype,
                    ),
                  ],
                ),
                AdressTextField(
                  fieldText: 'Proparty Adress',
                  hintText: 'Enter your adreess',
                  onTap: roomcontroller.adress,
                ),
                Hight10,
                Obx(
                  () => Column(
                    children: [
                      Row(
                        children: [
                          Width20,
                          SizedBox(
                            width: 190,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Swiming Pool',
                              ),
                              value: roomcontroller.pool.value,
                              onChanged: (value) {
                                roomcontroller.pool.value =
                                    !roomcontroller.pool.value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Parking',
                              ),
                              value: roomcontroller.Parking.value,
                              onChanged: (value) {
                                roomcontroller.Parking.value =
                                    !roomcontroller.Parking.value;
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Width20,
                          SizedBox(
                            width: 190,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Meeting Hall',
                              ),
                              value: roomcontroller.meetingroom.value,
                              onChanged: (value) {
                                roomcontroller.meetingroom.value =
                                    !roomcontroller.meetingroom.value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Food',
                              ),
                              value: roomcontroller.food.value,
                              onChanged: (value) {
                                roomcontroller.food.value =
                                    !roomcontroller.food.value;
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Width20,
                          SizedBox(
                            width: 190,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'PowerBackUp',
                              ),
                              value: roomcontroller.powerBuckup.value,
                              onChanged: (value) {
                                roomcontroller.powerBuckup.value =
                                    !roomcontroller.powerBuckup.value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Wifi',
                              ),
                              value: roomcontroller.wifi.value,
                              onChanged: (value) {
                                roomcontroller.wifi.value =
                                    !roomcontroller.wifi.value;
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Width20,
                          SizedBox(
                            width: 190,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Heater',
                              ),
                              value: roomcontroller.heater.value,
                              onChanged: (value) {
                                roomcontroller.heater.value =
                                    !roomcontroller.heater.value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Tv',
                              ),
                              value: roomcontroller.Tv.value,
                              onChanged: (value) {
                                roomcontroller.Tv.value =
                                    !roomcontroller.Tv.value;
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Width20,
                          SizedBox(
                            width: 190,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Goodsefty',
                              ),
                              value: roomcontroller.goodSefty.value,
                              onChanged: (value) {
                                roomcontroller.goodSefty.value =
                                    !roomcontroller.goodSefty.value;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: CheckboxListTile(
                              activeColor: Colors.blue,
                              title: CheckBoxTextWidget(
                                title: 'Ac',
                              ),
                              value: roomcontroller.ac.value,
                              onChanged: (value) {
                                roomcontroller.ac.value =
                                    !roomcontroller.ac.value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                DiscriptionWidgets(),
                Hight20,
                AddRoomMapWidget(),
                Hight10,
                Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110),
                  child: ElevatedButton(
                    onPressed: () async {
                      final clientInfo = RoomDataModel(
                        roomtype: roomcontroller.roomtype.text,
                        city: roomcontroller.city.text,
                        address: roomcontroller.adress.text,
                        propertyname: roomcontroller.propertyname.text,
                        pincode: roomcontroller.pincode.toString(),
                        propertyPrice: roomcontroller.properyprice.toString(),
                        state: roomcontroller.state.text,
                        discription: roomcontroller.description.text, 
                       wifi: roomcontroller.wifi.value, 
                       goodSefty: roomcontroller.goodSefty.value,
                        heater: roomcontroller.heater.value, 
                        Tv: roomcontroller.Tv.value,
                         food: roomcontroller.food.value,
                          ac: roomcontroller.ac.value, 
                          meetingroom: roomcontroller.meetingroom.value, 
                          parking: roomcontroller.Parking.value, 
                          pool: roomcontroller.pool.value,
                           powerBackup: roomcontroller.powerBuckup.value,
          
                      );

// await imagepick.uploadImage(imagepick.images.toList(), context);
                      bool success = await roomcontroller.addRooms(clientInfo);
                      try {
                        await FirebaseFirestore.instance
                            .collection('clientData')
                            .add(
                              clientInfo.toJson(),
                            );

                        print('Room added successfully');
                      } catch (e) {
                        print('Error adding room: $e');
                      }
                      await imagepick.uploadImage(images as XFile, context);
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
