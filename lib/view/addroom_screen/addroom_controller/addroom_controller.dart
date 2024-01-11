import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AddRoomDatas extends GetxController{

final CollectionReference  roomCollection = FirebaseFirestore.instance.collection('rooms');
// Future<void> addRoom(Room room) async{
//   await roomsCollection.add(room.toJson());
}

