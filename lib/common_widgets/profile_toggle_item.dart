import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileToggleItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const ProfileToggleItem({
    required this.iconPath,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getHeight(16)),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16), vertical: getHeight(20)),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: kGreyShade5Color.withOpacity(0.15),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(iconPath, width: getWidth(24), height: getHeight(24)),
          SizedBox(width: getWidth(22)),
          Expanded(
            child: Text(
              title,
              style: AppStyles.blackTextStyle()
                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),
          Switch(
            inactiveThumbColor: kWhiteColor,
            activeTrackColor: kPrimaryColor,
            inactiveTrackColor: kGreyShade6Color,
            trackOutlineWidth: WidgetStatePropertyAll(0),
            value: value,
            onChanged: onChanged,
            activeColor: kWhiteColor,
          ),
        ],
      ),
    );
  }
}
