import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildDetails({
  required Color textColor,
  required String image,
  required String title,
  required String detail,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: getWidth(22)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.blackTextStyle().copyWith(
              fontSize: 20.sp, fontWeight: FontWeight.w700, color: textColor),
        ),
        SizedBox(height: getHeight(22)),
        Center(
            child: Image.asset(image,
                height: getHeight(123), width: getWidth(136))),
        SizedBox(height: getHeight(21)),
        Text(
          detail,
          style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
        ),
      ],
    ),
  );
}
