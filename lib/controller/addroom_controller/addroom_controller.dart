
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time/model/addroom_model/model.dart';
class RoomDatas extends GetxController{
   RoomDatas get instance => Get.find();

  final propertyname = TextEditingController();
  final properyprice = TextEditingController();
  final state =TextEditingController();
  final city = TextEditingController();
  final pincode =  TextEditingController();
  final roomtype = TextEditingController();
  final adress = TextEditingController();
  final description = TextEditingController();


final wifi =false.obs;
final food =false.obs;
final Parking =false.obs;
final ac =false.obs;
final heater =false.obs;
final meetingroom =false.obs;
final powerBuckup =false.obs;
final Tv =false.obs;
final pool = false.obs;
final goodSefty=false.obs;

var roomslist=RxList<RoomDataModel>();
final db=FirebaseAuth.instance;
final storage = FirebaseStorage.instance;

Future<bool>addRooms(RoomDataModel roomdata)async{
  Map<String,dynamic>?RoomDataModel ={
    'propertyname': roomdata.propertyname,
    'propertyprice':roomdata.propertyPrice,
    'statename':roomdata.city,
    'cityname':roomdata.state,
    'pincode':roomdata.pincode,
    'roomcategary':roomdata.roomtype,
    'roomaddress':adress,
    'discription':roomdata.discription,
    'wifi':roomdata.wifi,
    'food':roomdata.food,
    'parking':roomdata.parking,
    'ac':roomdata.ac,
    'heater':roomdata.heater,
    'meetinghall':roomdata.meetingroom,
    'powerBackup':roomdata.powerBackup,
    'Tv':roomdata.Tv,
    'swimmingpool':pool,
    'goodsefty':goodSefty,

  };
 try{
  await FirebaseFirestore.instance
  .collection('clientData')
  .doc()
  .set(RoomDataModel);
  return true;
 }catch(e){
  return false;
 }
}



  


}


