
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
 final bool food;
 final bool wifi;
 final bool powerBackup;
 final bool parking;
 final bool Tv;
 final bool meetingroom;
final  bool heater;
 final bool ac;   
 final bool goodSefty;                                                                                                                                                                                                                                                                 


RoomDataModel({
 required this.goodSefty,   
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
      'wifi':wifi,
      'tv':Tv,
    'Ac':ac,
    'heater':heater,
    'meetinghall':meetingroom,
    'powerBackup':powerBackup,
    'swimmingpool':pool,
    'goodsefty':goodSefty,
    'parking':parking,

    };
} 
}
