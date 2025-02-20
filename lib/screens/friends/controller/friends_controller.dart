import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';

class FriendsController extends GetxController {
  var selectedTab = "Requests".obs;
  var friendsList = [
    {
      "name": "Alexa",
      "image": kAvatar10,
    }
  ].obs;

  var searchQuery = "".obs;
  var isCopied = false.obs;

  void changeTab(String tab) {
    selectedTab.value = tab;
  }

  void toggleCopied() {
    isCopied.value = true;
    Future.delayed(Duration(seconds: 2), () {
      isCopied.value = false;
    });
  }

  void removeFriend(int index) {
    friendsList.removeAt(index);
  }
}
