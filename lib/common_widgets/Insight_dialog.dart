import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/app_styles.dart';
import 'custom_button.dart';

class InfoDialog extends StatelessWidget {
  final VoidCallback onClose;

  const InfoDialog({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 15),
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
                "How Healink's scores work",
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: getHeight(8)),
              Text(
                "Your Lifestyle Score is a rolling average of the amount of health habits you have completed in the past seven days."
                    "\n\nHealink contains 30 health habits across 5 areas that are known to significantly influence health and wellbeing."
                    "\n\nThe more of these habits you complete, and the more consistently you complete them, the higher your score will be."
                    "\n\nYour approximated health risk rating (e.g. Low risk) is based on your Lifestyle Score.",
                style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
              ),
              SizedBox(height: getHeight(22)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    title: "Done",
                    onTap: onClose,
                    height: getHeight(44),
                    width: getWidth(67),
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
