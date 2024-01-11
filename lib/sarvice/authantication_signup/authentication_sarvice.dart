import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spent_time/view/bottom_navigation/botton_navigation.dart';
import 'package:spent_time/view/login/login_screen.dart';
import 'package:spent_time/sarvice/authantication_signup/exption_sarvice.dart';

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

  Future<void> logOutWithEmailAndPassword(
      String emailController, String passwordController) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: emailController, password: passwordController);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logOut() async => await auth.signOut();
}
