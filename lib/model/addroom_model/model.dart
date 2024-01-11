import 'package:get/get.dart';

class AddRoomModel{
  final String? id;
  final String? propertyName;
 final String? propertyPrice;
 final String? propartyCity;
final  String propertyState;
 final String propertyPincode;
final  String roomCategary;
 final String propertyAdress;
 final String propertydiscription;
 final String pool;
 final String food;
 final String Wifi;
 final String powerBackup;
final  String parking;
 final String Tv;
 final String meetingRoom;
final  String Heater;
 final String ac;                                                                                                                                                                                                                                                                           


AddRoomModel({
  required this.Heater,
  required this.Tv,
  required this.Wifi,
  required this.ac,
  required this.food,
  this.id,
  required this.meetingRoom,
  required this.parking,
  required this.pool,
  required this.powerBackup,
  required this.roomCategary,
  this.propartyCity,
  required this.propertyAdress,
  this.propertyName,
  required this.propertyPincode,
  this.propertyPrice,
  required this.propertyState,
  required this.propertydiscription
  });
} 

