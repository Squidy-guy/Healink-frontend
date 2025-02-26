import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/guides/controller/guides_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildDescription({
  required RxBool expanded,
  required String lessText,
  required String fullText,
}) {
  final GuidesController controller = Get.find();
  return Obx(() {
    return Column(
      children: [
        if (!expanded.value)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHeight(22)),
            child: Text(
              lessText,
              style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
            ),
          ),
        if (expanded.value)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getHeight(22)),
            child: Text(
              fullText,
              style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
            ),
          ),
        Center(
          child: CustomButton(
            height: 48,
            width: 241,
            borderColor: kPrimaryColor,
            textColor: kPrimaryColor,
            color: kBgColor,
            showShadow: false,
            title: expanded.value ? "Show Less" : "Show More",
            onTap: () {
              controller.toggleExpand(expanded);
            },
          ),
        )
      ],
    );
  });
}
