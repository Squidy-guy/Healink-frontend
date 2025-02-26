import 'package:flutter/material.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HabitCard extends StatelessWidget {
  final String icon;
  final String name;
  final String time;
  final int streak;
  final bool checked;
  final Color color;
  final double progress;
  final String img;
  final VoidCallback onTap;

  const HabitCard(
      {required this.icon,
      required this.name,
      required this.time,
      required this.streak,
      required this.checked,
      required this.onTap,
      required this.color,
      required this.progress,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(16)),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: !checked
                ? Image.asset(
                    kCheckboxIcon,
                    height: getHeight(28),
                    width: getWidth(28),
                  )
                : Image.asset(
                    kCircle,
                    height: getHeight(28),
                    width: getWidth(28),
                  ),
          ),
          SizedBox(width: getWidth(24)),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: getHeight(7), top: getHeight(14), left: getWidth(11)),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(24),
                border:
                    Border.all(color: checked ? color : kWhiteColor, width: 2),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(icon, width: getWidth(61)),
                  SizedBox(width: getWidth(11)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: getWidth(160),
                                child: Text(name,
                                    style: AppStyles.blackTextStyle()
                                        .copyWith(fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(height: getHeight(8)),
                              Text(time,
                                  style: TextStyle(
                                      color: kGreyShade8Color,
                                      fontSize: 13.sp)),
                              SizedBox(height: getHeight(8)),
                              Text("$streak day streak",
                                  style:
                                      TextStyle(color: color, fontSize: 13.sp)),
                            ],
                          ),
                          SizedBox(
                            width: getWidth(10),
                          ),
                          Image.asset(
                            img,
                            height: getHeight(15.5),
                            width: getWidth(15.5),
                            color: color,
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(8)),
                      LinearPercentIndicator(
                        width: getWidth(182),
                        lineHeight: getHeight(8),
                        percent: progress.clamp(0.0, 1.0),
                        backgroundColor: kGreyShade10Color,
                        progressColor: color,
                        barRadius: Radius.circular(15),
                        animation: true,
                        animationDuration: 800,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
