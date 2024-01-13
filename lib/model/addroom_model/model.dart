import 'package:get/get.dart';

class RoomDataModel{
  final String? id;
  final String propertyname;
 final String propertyPrice;
 final String city;
final  String  state;
 final String pincode;
final  String roomtype;
 final String address;
 final String discription;
 final bool pool;
 final String food;
 final String wifi;
 final String powerBackup;
final  String parking;
 final String Tv;
 final String meetingroom;
final  String heater;
 final String ac;   
                                                                                                                                                                                                                                                                         


RoomDataModel({
  required this.heater,
  required this.Tv,
  required this.wifi,
  required this.ac,
  required this.food,
  this.id,
  required this.meetingroom,
  required this.parking,
  required this.pool,
  required this.powerBackup,
  required this.roomtype,
 required this.city,
  required this.address,
 required this.propertyname,
  required this.pincode,
 required this.propertyPrice,
  required this.state,
  required this.discription
  });
  
  Map<String, dynamic> toJson() {
    return {
      'roomtype': roomtype,
      'city': city,
      'address': address,
      'propertyname': propertyname,
      'pincode': pincode,
      'propertyPrice': propertyPrice,
      'state': state,
      'discription': discription,
      // 'wifi':pool
    };
} 
}
