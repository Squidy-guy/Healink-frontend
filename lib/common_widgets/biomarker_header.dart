import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utils/app_styles.dart';

class BiomarkerHeader extends StatelessWidget {
  final String image;
  final String title;
  const BiomarkerHeader({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Row(
        children: [
          Image.asset(image, height: getHeight(54), width: getWidth(54)),
          SizedBox(width: getWidth(14)),
          Text(title,
              style: AppStyles.blackTextStyle()
                  .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700)),
          const Spacer(),
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
                height: getHeight(28),
                width: getWidth(28),
                decoration: BoxDecoration(
                    color: kBlackTextColor, shape: BoxShape.circle),
                child: Icon(Icons.close, color: kWhiteColor, size: 18.sp)),
          ),
        ],
      ),
    );
  }
}
