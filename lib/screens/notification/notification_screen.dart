import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_appBar.dart';
import 'package:healink_app/screens/notification/controller/notification_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationScreen extends StatelessWidget {
  final NotificationController controller = Get.find();

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(75)),
            CustomAppBar(title: "Notifications"),
            Obx(() {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.notifications.length,
                itemBuilder: (context, index) {
                  var notification = controller.notifications[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: getHeight(22)),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: getHeight(20)),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: kGreyShade5Color.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: getWidth(14)),
                          CircleAvatar(
                            radius: getWidth(22),
                            backgroundImage: AssetImage(notification["image"]!),
                          ),
                          SizedBox(width: getWidth(15)),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notification["name"]!,
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: getHeight(3)),
                                Text(
                                  notification["time"]!,
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: getHeight(3)),
                                Text(
                                  notification["message"]!,
                                  style: AppStyles.blackTextStyle().copyWith(
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
