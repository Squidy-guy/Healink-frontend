import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:healink_app/screens/guides/controller/guides_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildHabits({
  required String title,
  required Color textColor,
  required RxList<Map<String, dynamic>> list,
}) {
  final GuidesController controller = Get.find();
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: getWidth(22)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: AppStyles.primaryTextStyle().copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: textColor)),
        SizedBox(height: getHeight(24)),
        Obx(() {
          return Column(
            children: List.generate(list.length, (index) {
              var habit = list[index];
              return Padding(
                padding: EdgeInsets.only(bottom: getHeight(19)),
                child: Row(
                  children: [
                    Image.asset(
                      habit["image"],
                      height: getHeight(48),
                      width: getWidth(48),
                    ),
                    SizedBox(width: getWidth(12)),
                    SizedBox(
                      width: getWidth(208),
                      child: Text(
                        habit["title"],
                        style: AppStyles.blackTextStyle()
                            .copyWith(fontSize: 16.sp, color: kBlackColor),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => controller.toggleHabit(index, list),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: getWidth(7), vertical: getHeight(5)),
                        decoration: BoxDecoration(
                          color: habit["added"]
                              ? kGreenShade3Color
                              : kPrimaryColor,
                          borderRadius: BorderRadius.circular(61),
                        ),
                        child: Text(
                          habit["added"] ? "✓ Added" : "+ Add",
                          style: AppStyles.whiteTextStyle().copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: habit["added"]
                                  ? kGreenShade2Color
                                  : kWhiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          );
        }),
      ],
    ),
  );
}
