import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomModelButton extends StatelessWidget {
  VoidCallback onTap;
  String text;
  CustomModelButton({super.key,required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: getHeight(27),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(7),
          boxShadow: AppStyles.buttonShadow,
        ),
        child: Center(child: Text(text,style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w600,fontSize: 16),)),
      ),
    );
  }
}

