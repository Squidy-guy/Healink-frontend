import 'package:get/get.dart';
import 'package:healink_app/utils/app_images.dart';

class AvatarController extends GetxController {
  var avatars = [
    kAvatar1,
    kAvatar2,
    kAvatar3,
    kAvatar4,
    kAvatar5,
    kAvatar6,
    kAvatar7,
    kAvatar8,
    kAvatar9,
    kAvatar10,
    kAvatar11,
    kAvatar12,
    kAvatar13,
    kAvatar14,
    kAvatar15,
    kAvatar16,
    kAvatar17,
    kAvatar18
  ].obs;

  var selectedAvatar = RxnString();
  var currentPage = 0.obs;

  List<String> get paginatedAvatars =>
      avatars.skip(currentPage.value * 9).take(9).toList();

  void selectAvatar(String avatar) {
    selectedAvatar.value = avatar;
  }

  void nextPage() {
    if ((currentPage.value + 1) * 9 < avatars.length) {
      currentPage.value++;
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
    }
  }
}
