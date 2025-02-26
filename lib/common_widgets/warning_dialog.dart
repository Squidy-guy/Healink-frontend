import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'custom_button.dart';

class WarningDialog extends StatelessWidget {
  final VoidCallback action;
  final String title;
  final String detail;
  final String actionText;

  const WarningDialog({super.key, required this.action,required this.title,required this.detail,required this.actionText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(4, 4),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(8)),
              Text(detail!,style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: getHeight(37)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    title: "Back",
                    color: kGreyShade11Color,
                    borderColor: kGreyShade11Color,
                    textColor: kBlackTextColor,
                    textSize: 18,
                    onTap: (){
                      Get.back();
                    },
                    height: getHeight(44),
                    width: getWidth(67),
                    showShadow: false,
                  ),
                  CustomButton(
                    title: actionText,
                    onTap: action,
                    height: getHeight(44),
                    width: getWidth(96),
                    textSize: 18,
                    showShadow: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
