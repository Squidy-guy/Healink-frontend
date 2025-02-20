import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final double borderRadius;
  final String title;
  final Color textColor;
  final Color color;
  final double width;
  final double height;
  final double textSize;
  final Function()? onTap;
  final bool showShadow;
  final Color borderColor;
  final Color shadowColor;
  final String? image;
  final bool? isImage;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.textColor = kWhiteColor,
    this.color = kPrimaryColor,
    this.width = 270,
    this.height = 48,
    this.borderRadius = 15,
    this.textSize = 18,
    this.showShadow = true,
    this.isImage = false,
    this.shadowColor = kShadowColor,
    this.borderColor = kPrimaryColor,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getHeight(height),
        width: getWidth(width),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor, width: 1),
            color: color,
            boxShadow: [
              BoxShadow(
                color: showShadow ? shadowColor : Colors.transparent,
                offset: const Offset(0, 3),
                blurRadius: 0,
                spreadRadius: 0,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isImage == true)
            Image.asset(image!,height: 18,width: 18,),
            if(isImage == true)
            SizedBox(width: getWidth(7),),
            Text(
              title,
              style: AppStyles.whiteTextStyle().copyWith(
                  fontSize: textSize.sp,
                  color: textColor,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
