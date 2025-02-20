import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/app_colors.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: getHeight(16)),
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(16), vertical: getHeight(24)),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: kGreyShade5Color.withOpacity(0.15),
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 0)),
          ],
        ),
        child: Row(
          children: [
            Image.asset(iconPath, width: getWidth(20), height: getHeight(20)),
            SizedBox(width: getWidth(22)),
            Expanded(
              child: Text(
                title,
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16.sp, color: kBlackTextColor),
          ],
        ),
      ),
    );
  }
}
