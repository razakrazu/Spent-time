// import 'package:get/get.dart';
// import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/authentication_cantroller.dart';
// import 'package:spent_time/screens/login%20and%20singup/singup/model/model.dart';
// import 'package:spent_time/screens/login%20and%20singup/singup/user_repositry/user_repositry.dart';

// class ProfileController extends GetxController{
//   static ProfileController get instance => Get.find();
//   final authRepo= Get.put(AuthenticationRepositry());
//   final userRepo = Get.put(UserRepositry());
//   getUserData(){
// final email = authRepo.firebaseUser.value?.email;
// if(email != null){
//   return userRepo.getUserDetails(email);
// }else{
//   Get.snackbar('error', 'Login to continue');
// }
//   }
//   Future<List<UserModel>> getAllUser() async{
//     return await userRepo.allUser();
//   }

//    }