import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spent_time/bottom_navigation/botton_navigation.dart';
import 'package:spent_time/screens/login%20and%20singup/login_screen.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/authentication_controller/exption_screen.dart';
import 'package:spent_time/screens/login%20and%20singup/singup/singup_screen.dart';

class AuthenticationRepositry extends GetxController {
  static AuthenticationRepositry get instance => Get.find();

  final auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  void onReady() {
    Future.delayed(Duration(seconds: 6));
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, setInitialScreen);
  }

  setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => Login_Screen())
        : Get.offAll(() => BottomNavigationScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String emailController, String passwordController) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailController, password: passwordController);
      firebaseUser.value != null
          ? Get.offAll(() => BottomNavigationScreen())
          : Get.offAll(() => Login_Screen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(
      String emailController, String passwordController) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: emailController, password: passwordController);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> login() async => await auth.signOut();
}
