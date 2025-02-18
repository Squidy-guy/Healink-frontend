import 'package:get/get.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/avatar_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/habit_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => AvatarController());
    Get.lazyPut(() => HabitController());
  }
}
