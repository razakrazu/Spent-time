import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class Screenlogin extends StatefulWidget {
  Screenlogin({super.key});

  @override
  State<Screenlogin> createState() => _ScreenloginState();
}

class _ScreenloginState extends State<Screenlogin> {
 TextEditingController usernameControler = TextEditingController();  
  TextEditingController discrptioncontroler = TextEditingController();
  // bool _isDatamatched = true;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Color.fromARGB(255, 209, 209, 205),
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               
                
                TextFormField(
                    controller: usernameControler,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'username',
                    ),
                 
                    ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: discrptioncontroler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'discrption',
                  ),
                
                ),
                const SizedBox(height: 40),
              
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                      SubmitData();
                      },
                      icon: Icon(Icons.check),
                      label: Text('Submit'),
                    ),
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
 Future <void> SubmitData() async{
    final title =usernameControler.text;
    final discription =discrptioncontroler.text;
    final body={
  "title": title,
  "description": discription,
  "is_completed": false,
};
final Url = 'https://api.nstack.in/v1/todos';
final uri= Uri.parse(Url);
final response  = await http.post(uri,
body: jsonEncode(body),
headers:{'Content-Type': 'application/json'},
);
if(response.statusCode==201){
  usernameControler.text='';
  discrptioncontroler.text='';
showSuccessMassage('Success  full');

}else{
showErrorMassage('not find');

}
    }
    void showSuccessMassage(String massage){
      final snackBar = SnackBar(content: Text(massage,style: TextStyle(color: Color.fromARGB(255, 230, 220, 220))),backgroundColor: Color.fromARGB(255, 83, 82, 82) );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    void showErrorMassage(String massage){
      
      final snackBar=SnackBar(content: Text(massage,),backgroundColor: Colors.red ,);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
