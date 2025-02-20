import 'package:get/get.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/screens/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:healink_app/screens/friends/controller/friends_controller.dart';
import 'package:healink_app/screens/guides/controller/sleep_controller.dart';
import 'package:healink_app/screens/home/controller/home_controller.dart';
import 'package:healink_app/screens/knowledge/controller/audio_player_controller.dart';
import 'package:healink_app/screens/knowledge/controller/knowledge_controller.dart';
import 'package:healink_app/screens/notification/controller/notification_controller.dart';
import 'package:healink_app/screens/profile/controller/profile_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/avatar_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/habit_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => AvatarController());
    Get.lazyPut(() => HabitController());
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => FriendsController());
    Get.lazyPut(() => KnowledgeController());
    Get.lazyPut(() => AudioController());
    Get.lazyPut(() => SleepController());
  }
}
