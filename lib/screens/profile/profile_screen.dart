// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:spent_time/screens/login%20and%20singup/singup/model/model.dart';
// import 'package:spent_time/screens/login%20and%20singup/singup/widgets/textformfild.dart';
// import 'package:spent_time/screens/profile/profile_cantroller/profile_controller.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller =Get.put(ProfileController());
//     return Scaffold(
//       body: Container(
//         child: FutureBuilder(
//           future: controller.getUserData(), 
//           builder: (context, snapshot) {
//             if(snapshot.connectionState == ConnectionState.done){
//               if(snapshot.hasData){
//                 UserModel userData = snapshot.data as UserModel;
//                 return Column(
//             children: [
//               Padding(
//                             padding: const EdgeInsets.all(15),
//                             child: Mytextformfieds(
//                               labal: 'Name',
//                               icons: Icons.person,
//                               onChanged: userData.name,
//                                  maxLength: 30,
//                                texttype: TextInputType.text,
//                             ),
                            
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15),
//                             child: Mytextformfieds(
//                               labal: 'Email',
//                               icons: Icons.mail_outline,
//                               onChanged: clientController.emailController,
//                                texttype: TextInputType.text,
//                                   maxLength: 30,
                           
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15),
//                             child: Mytextformfieds(
//                               labal: 'Number',
//                               icons: Icons.call,
//                               onChanged: clientController.numberController,
//                                texttype: TextInputType.number,
//                                maxLength: 10,
                            
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15),
//                             child: Mytextformfieds(
//                               labal: 'password',
//                               icons: Icons.lock,
//                               onChanged: clientController.passwordController,
//                                texttype: TextInputType.text,
//                                   maxLength: 30,
                           
//                             ),
//                           ),
//             ],
//           );
//               }else if (snapshot.hasError){
//                 return Center(child:  Text(snapshot.error.toString()),);
      
//               }else{
//                 return Center(child:  Text('something want wrong'),);
//               }
//             }else{
//               return Center(child:  CircularProgressIndicator(),);
//             }
//           }, ),
//       ),
//     );

//   }
// }