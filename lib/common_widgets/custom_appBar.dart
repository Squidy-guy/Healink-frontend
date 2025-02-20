import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: kBlackTextColor),
        ),
        SizedBox(height: getHeight(30)),
        Text(
          title,
          style: AppStyles.blackTextStyle()
              .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
