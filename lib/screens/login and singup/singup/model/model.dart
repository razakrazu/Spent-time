import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  String name;
  String email;
  String  number;
  String password;
  UserModel({this.id,
  required this.name,
  required this.email,
  required this.number,
  required this.password});

  toJson(){
    return {
      'name':name,
      'email':email,
      'phone':number,
      'password':password,
    };

  }
factory UserModel.fromSnapshort(DocumentSnapshot<Map<String,dynamic>>document){
  final data =document.data()!;
  return UserModel( 
    id:document.id,
    email:data['Email'],
    password:  data['Password'],
    name: data['Name'], 
    number: data['Number'], 
    );
}
// UserModel.fromJson(Map<String,dynamic>json){
// email = json['email'];
// password = json['password'];
// }
//   Map<String,dynamic> toJson(){
//     final Map <String,dynamic> data = <String,dynamic>{};
//     data['name']=name;
//     data['email']=email;
//     data['number']=number;
//     data['passward']=password;

// return data;
//   }
}