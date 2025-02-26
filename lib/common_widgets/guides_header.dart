import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildHeader({
  required String title,
  required String image,
}) {
  return Container(
    height: getHeight(197),
    width: double.infinity,
    padding:
        EdgeInsets.symmetric(horizontal: getWidth(24), vertical: getHeight(24)),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(80))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Container(
              height: getHeight(28),
              width: getWidth(28),
              decoration:
                  BoxDecoration(color: kWhiteColor, shape: BoxShape.circle),
              child: Icon(Icons.close, color: kBlackTextColor, size: 18.sp)),
        ),
        Text(
          title,
          style: AppStyles.whiteTextStyle()
              .copyWith(fontSize: 22.sp, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}
