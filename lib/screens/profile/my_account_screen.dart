import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/common_widgets/profile_menu_item.dart';
import 'package:healink_app/common_widgets/profile_toggle_item.dart';
import 'package:healink_app/screens/profile/controller/profile_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/app_styles.dart';

class MyAccountScreen extends StatelessWidget {
  final ProfileController controller = Get.find();

  MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            CustomAppBar(title: "My account"),
            SizedBox(height: getHeight(16)),
            Row(
              children: [
                Container(
                  height: getHeight(96),
                  decoration: BoxDecoration(
                      border: Border.all(color: kBlackColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: CircleAvatar(
                    radius: getWidth(32),
                    backgroundImage: AssetImage(kAvatar10),
                  ),
                ),
                SizedBox(width: getWidth(7)),
                Expanded(
                  child: Column(
                    children: [
                      CustomTextField(
                        height: 40,
                        hintText: "First Name",
                        controller: TextEditingController(
                            text: controller.userName.value),
                      ),
                      SizedBox(height: getHeight(15)),
                      CustomTextField(
                        height: 40,
                        hintText: "Last Name",
                        controller: TextEditingController(
                            text: controller.userName.value),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(30)),
            Obx(() => ProfileToggleItem(
                  iconPath: kBellIcon,
                  title: "Habit notifications",
                  value: controller.habitNotifications.value,
                  onChanged: (val) {
                    controller.habitNotifications.value = val;
                  },
                )),
            Obx(() => ProfileToggleItem(
                  iconPath: kBellIcon,
                  title: "Afternoon reminder",
                  value: controller.afternoonReminder.value,
                  onChanged: (val) {
                    controller.afternoonReminder.value = val;
                  },
                )),
            SizedBox(height: getHeight(16)),
            ProfileMenuItem(
              iconPath: kStarIcon,
              title: "Manage subscription",
              onTap: () {},
            ),
            ProfileMenuItem(
              iconPath: kBinIcon,
              title: "Delete account",
              onTap: () {
                Get.toNamed(kDeleteAccountScreenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
