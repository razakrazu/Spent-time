
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_todo_app/add_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  List items = [];
  @override
  void initState() {
    super.initState();
    fetchTodo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App'),centerTitle: true,
      
      ),
      
      body: Visibility(
        visible: isLoading,
       child : Center(child: CircularProgressIndicator(),),
         replacement   : RefreshIndicator(
          onRefresh: fetchTodo,
          child: ListView.builder(
            itemCount:items.length ,
            itemBuilder: (context,index){
              final item = items[index] as Map;
              final id = item['id'] as String;
            return ListTile(
              leading: CircleAvatar(child: Text('${index+1}')),
              title: Text(item['title']),
              subtitle: Text(item['description']),
              trailing: PopupMenuButton(
                 onSelected: (value){
if(value == 'edit'){

}else if(value == 'delete'){
DeleteById(id );
}
                 },
                itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('Edit'),
                  value: 'edit',),
                  PopupMenuItem(child: Text('Delete'),value: 'delete',),

                ];
              },),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
navigateToEditPage();
      }
      ,child: Text('add Todo'),
    ),
    );
}
void navigateToEditPage(){
  final route = MaterialPageRoute(
    builder: (context)=>Screenlogin()
    );
  Navigator.push(context, route);

}    
void navigateToEditPage(){
  final route = MaterialPageRoute(
    builder: (context)=>Screenlogin()
    );
  Navigator.push(context, route);

}   
Future<void> DeleteById(String id)async{
  final url ='https://api.nstack.in/v1/todos/$id';
  final uri= Uri.parse(url);
  final response= await http.delete(uri);
  if(response.statusCode==200){
  final filtered = items.where((element) => element['_id']!=id ).toList();
  setState(() {
    items= filtered;
  });
  }
}
Future<void> fetchTodo()async{
  final url='https://api.nstack.in/v1/todos?page=1&limit=10';
  final uri = Uri.parse(url);
  final response  = await http.get(uri);


if(response.statusCode==200){
  final json=jsonDecode(response.body) as Map;
  final result = json ['items'] as List;  
  setState(() {
    items = result;
  });



setState(() {
  isLoading = false;
});
}else{
  // showErrorMassage('Delete faild');
}
}
  // void showErrorMassage(String massage){
      
  //     final snackBar=SnackBar(content: Text(massage,),backgroundColor: Colors.red ,);
  //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
}

