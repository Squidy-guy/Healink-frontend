import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? percentage;
  final String buttonText;
  final List<Color> colors;
  final Color? buttonColor;
  final double? width;
  final double? contWidth;
  final double horizontalpadding;
  final String? icon;
  final bool showBtn;
  final String? lowerImage;
  final String? lowerImage1;
  final double imgHeight;
  final double imgWidth;
  final bool showBrainImg;
  final bool showIcon;
  final Function()? onTap;

  const ProgressCard({
    required this.title,
    required this.subtitle,
    this.percentage,
    required this.buttonText,
    required this.colors,
    this.buttonColor,
    this.width,
    this.contWidth,
    this.horizontalpadding = 16,
    this.icon,
    this.showBtn = true,
    this.lowerImage,
    this.lowerImage1,
    this.imgHeight = 53,
    this.imgWidth = 53,
    this.showBrainImg = false,
    this.showIcon = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: contWidth,
        margin: EdgeInsets.only(right: getWidth(20)),
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(horizontalpadding), vertical: getHeight(19)),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (percentage != null) ...[
                          Container(
                            height: getHeight(62),
                            width: getWidth(62),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: kGreyShade7Color, width: 2),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                percentage!,
                                style: AppStyles.whiteTextStyle().copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(width: getWidth(15))
                        ],
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                if (showBrainImg) ...[
                                  Image.asset(
                                    kBrain,
                                    height: getHeight(57),
                                    width: getWidth(57),
                                  ),
                                  SizedBox(width: getWidth(10)),
                                ],
                                Text(
                                  title,
                                  style: AppStyles.whiteTextStyle().copyWith(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                if (showIcon) ...[
                                  SizedBox(width: getWidth(40)),
                                  InkWell(
                                    onTap: () {
                                      showCopiedDialog();
                                    },
                                    child: Icon(
                                      Icons.share,
                                      color: kBlackTextColor,
                                    ),
                                  )
                                ],
                              ],
                            ),
                            SizedBox(height: getHeight(5)),
                            Text(
                              subtitle,
                              style: AppStyles.whiteTextStyle().copyWith(
                                  fontSize: 13.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: getHeight(20)),
                    showBtn
                        ? Center(
                            child: InkWell(
                              onTap: onTap,
                              child: Container(
                                height: getHeight(40),
                                width: width,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      buttonText,
                                      style: AppStyles.whiteTextStyle()
                                          .copyWith(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: getWidth(10)),
                                    Icon(Icons.arrow_forward,
                                        color: Colors.white, size: 16.sp),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                if (icon != null) ...[
                  SizedBox(width: getWidth(13)),
                  Image.asset(
                    icon!,
                    height: getHeight(62),
                    width: getWidth(62),
                  ),
                ],
              ],
            ),
            if (lowerImage != null)
              Positioned(
                top: getHeight(65),
                right: 0,
                child: Image.asset(
                  lowerImage!,
                  height: getHeight(imgHeight),
                  width: getWidth(imgWidth),
                ),
              ),
            if (lowerImage1 != null)
              Positioned(
                top: getHeight(35),
                right: 0,
                child: Image.asset(
                  lowerImage1!,
                  height: getHeight(imgHeight),
                  width: getWidth(imgWidth),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void showCopiedDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(12), vertical: getHeight(11)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Text copied\nready to share",
                textAlign: TextAlign.center,
                style: AppStyles.blackTextStyle()
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(25)),
              Icon(Icons.check, color: kGreenColor, size: 30.sp),
            ],
          ),
        ),
      ),
    );
  }
}
