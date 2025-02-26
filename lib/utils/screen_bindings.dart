import 'package:get/get.dart';
import 'package:healink_app/screens/all_habits/exercise_habits_screen/controller/exercise_habit_controller.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/controller/nutrition_habits_controller.dart';
import 'package:healink_app/screens/auth/controller/auth_controller.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/screens/bottom_bar/controller/bottom_bar_controller.dart';
import 'package:healink_app/screens/friends/controller/friends_controller.dart';
import 'package:healink_app/screens/guides/controller/guides_controller.dart';
import 'package:healink_app/screens/home/controller/home_controller.dart';
import 'package:healink_app/screens/insights_screen/controller/report_controller.dart';
import 'package:healink_app/screens/knowledge/controller/audio_player_controller.dart';
import 'package:healink_app/screens/knowledge/controller/knowledge_controller.dart';
import 'package:healink_app/screens/lesson_detail_screen/controller/lesson_detail-controller.dart';
import 'package:healink_app/screens/notification/controller/notification_controller.dart';
import 'package:healink_app/screens/profile/controller/profile_controller.dart';
import 'package:healink_app/screens/insights_screen/controller/insight_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/avatar_controller.dart';
import 'package:healink_app/screens/profile_setup/controller/habit_controller.dart';
import '../screens/all_habits/res_habit_screen/controller/res_habit_controller.dart';
import '../screens/all_habits/sleep_habits_screen/controller/sleep_habits_controller.dart';
import '../screens/all_habits/stim_habits_screen/controller/stim_habit_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => AvatarController());
    Get.lazyPut(() => HabitController());
    Get.lazyPut(() => InsightController());
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => NotificationController());
    Get.lazyPut(() => FriendsController());
    Get.lazyPut(() => KnowledgeController());
    Get.lazyPut(() => AudioController());
    Get.lazyPut(() => GuidesController());
    Get.lazyPut(() => BiomarkerController());
    // Get.lazyPut(() => SleepController());
    Get.lazyPut(() => ReportController());
    Get.lazyPut(() => SleepHabitController());
    Get.lazyPut(() => StimulationHabitController());
    Get.lazyPut(() => NutritionHabitController());
    Get.lazyPut(() => ResilienceHabitController());
    Get.lazyPut(() => ExerciseHabitController());
    Get.lazyPut(() => LessonDetailController());
  }
}
