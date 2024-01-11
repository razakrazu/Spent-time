import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RoomDatas extends GetxController{
  static RoomDatas get instance => Get.find();

  final propertyname = TextEditingController();
  final properyprice = TextEditingController();
  final statename =TextEditingController();
  final cityname = TextEditingController();
  final pincode =  TextEditingController();
  final roomtype = TextEditingController();
  final propertyadress = TextEditingController();
  final adress = TextEditingController();
  final description = TextEditingController();


final isWifi =RxBool(false);
final isFood =RxBool(false);
final isParking =RxBool(false);
final isAc =RxBool(false);
final isHeater =RxBool(false);
final isMeetingHall =RxBool(false);
final isPowerBuckup =RxBool(false);
final isTv =RxBool(false);
final isPool =RxBool(false);


}
