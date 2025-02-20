import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';

class HomeController extends GetxController {
  var completedHabits = <String>[].obs;

  RxList<Map<String, dynamic>> habits = [
    {
      "icon": kHabit11,
      "name": "Avoid junk food, alcohol and nicotine",
      "time": "Everyday - 12:00 pm",
      "streak": 0,
      "checked": false,
      "color": kGreenColor,
      "icon2": kMoreIcon,
    },
    {
      "icon": kHabit25,
      "name": "Mindfulness",
      "time": "Everyday - 12:00 pm",
      "streak": 0,
      "checked": false,
      "color": kOrangeShadeColor,
      "icon2": kChatFilledIcon
    }
  ].obs;

  void toggleHabit(int index) {
    habits[index]["checked"] = !habits[index]["checked"];
    habits.refresh();

    if (habits[index]["checked"]) {
      completedHabits.add(habits[index]["icon"]);
    } else {
      completedHabits.remove(habits[index]["icon"]);
    }
  }
}
