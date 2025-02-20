import 'package:get/get.dart';

class ProfileController extends GetxController {
  var userName = "Alex Alex".obs;
  var plan = "Free Plan".obs;
  var joinedDate = "Joined January, 2025".obs;

  var habitNotifications = false.obs;
  var afternoonReminder = true.obs;
  var googleLinked = false.obs;
  var appleLinked = false.obs;
  var facebookLinked = false.obs;
}
