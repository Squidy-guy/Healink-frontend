import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utils/app_styles.dart';

class BiomarkerTagSection extends StatelessWidget {
  final String icon;
  final String tag;
  final bool isPremium;
  const BiomarkerTagSection(
      {super.key,
      required this.icon,
      required this.tag,
      this.isPremium = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(8), vertical: getHeight(8)),
              decoration: BoxDecoration(
                  color: kGreyShade16Color,
                  borderRadius: BorderRadius.circular(33)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(icon, height: getHeight(15), width: getWidth(15)),
                  SizedBox(width: getWidth(10)),
                  Text(tag,
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(width: getWidth(10)),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(8), vertical: getHeight(8)),
              decoration: BoxDecoration(
                  color: kBlackTextColor,
                  borderRadius: BorderRadius.circular(33)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(kEditIcon,
                      height: getHeight(15), width: getWidth(15)),
                  SizedBox(width: getWidth(10)),
                  Text("Need date",
                      style: AppStyles.whiteTextStyle().copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ],
        ),
        if (isPremium) ...[
          SizedBox(height: getHeight(22)),
          Container(
            width: getWidth(94),
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(8), vertical: getHeight(8)),
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [kPrimaryColor, kBlueShade7Color]),
                borderRadius: BorderRadius.circular(33)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  kStarFilledIcon,
                  height: getHeight(15),
                  width: getWidth(15),
                  color: kWhiteColor,
                ),
                SizedBox(width: getWidth(10)),
                Text("Premium",
                    style: AppStyles.whiteTextStyle().copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
