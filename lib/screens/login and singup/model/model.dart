import 'dart:core';

class SingModel{
  String? name;
  String? email;
  String?  number;
  String? password;
  SingModel({this.name,this.email,this.number,this.password});

SingModel.fromJson(Map<String,dynamic>json){
email = json['email'];
password = json['password'];
}
  Map<String,dynamic> toJson(){
    final Map <String,dynamic> data = <String,dynamic>{};
    data['name']=name;
    data['email']=email;
    data['number']=number;
    data['passward']=password;

return data;
  }
}