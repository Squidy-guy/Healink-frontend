import 'package:flutter/material.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utils/app_styles.dart';

class BiomarkerProgressBar extends StatelessWidget {
  final String title;
  final bool isBars;
  final bool isBloodPressure;
  final String? firstTitle;
  final String? secondTitle;
  const BiomarkerProgressBar(
      {super.key,
      required this.title,
      this.isBars = false,
      this.firstTitle,
      this.secondTitle,
      this.isBloodPressure = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
      child: Column(
        children: [
          if (isBars) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(firstTitle!,
                  style: AppStyles.blackTextStyle()
                      .copyWith(fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: getHeight(22)),
          ],
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(kNeedDateIcon,
                height: getHeight(32), width: getWidth(75)),
          ),
          SizedBox(height: getHeight(3)),
          Container(
            height: getHeight(16),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: isBloodPressure
                  ? LinearGradient(colors: [
                      kRedShade2Color,
                      kOrangeShade3Color,
                      kGreenShade6Color,
                      kYellowShadeColor,
                      kOrangeShade3Color,
                      kRedShade2Color
                    ], stops: [
                      0.2,
                      0.4,
                      0.4,
                      0.6,
                      0.6,
                      0.9
                    ])
                  : LinearGradient(colors: [
                      kGreenShade6Color,
                      kYellowShadeColor,
                      kOrangeShade3Color,
                      kRedShade2Color
                    ], stops: [
                      0.2,
                      0.5,
                      0.5,
                      0.9
                    ]),
            ),
          ),
          SizedBox(height: getHeight(11)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("99",
                  style: AppStyles.blackTextStyle()
                      .copyWith(fontWeight: FontWeight.w700)),
              Text("mg/dL",
                  style: AppStyles.blackTextStyle()
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 13.sp)),
            ],
          ),
          if (isBars) ...[
            SizedBox(height: getHeight(16)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(secondTitle!,
                  style: AppStyles.blackTextStyle()
                      .copyWith(fontWeight: FontWeight.w700)),
            ),
            SizedBox(height: getHeight(22)),
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(kNeedDateIcon,
                  height: getHeight(32), width: getWidth(75)),
            ),
            SizedBox(height: getHeight(3)),
            Container(
              height: getHeight(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: isBloodPressure
                    ? LinearGradient(colors: [
                        kRedShade2Color,
                        kOrangeShade3Color,
                        kGreenShade6Color,
                        kYellowShadeColor,
                        kOrangeShade3Color,
                        kRedShade2Color
                      ], stops: [
                        0.2,
                        0.4,
                        0.4,
                        0.6,
                        0.6,
                        0.9
                      ])
                    : LinearGradient(colors: [
                        kGreenShade6Color,
                        kYellowShadeColor,
                        kOrangeShade3Color,
                        kRedShade2Color
                      ], stops: [
                        0.2,
                        0.5,
                        0.5,
                        0.9
                      ]),
              ),
            ),
            SizedBox(height: getHeight(11)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("99",
                    style: AppStyles.blackTextStyle()
                        .copyWith(fontWeight: FontWeight.w700)),
                Text("mg/dL",
                    style: AppStyles.blackTextStyle().copyWith(
                        fontWeight: FontWeight.w700, fontSize: 13.sp)),
              ],
            ),
          ],
          SizedBox(height: getHeight(16)),
          _buildRow(),
          SizedBox(height: getHeight(26)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(title,
                style: AppStyles.blackTextStyle()
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 18.sp)),
          ),
          SizedBox(height: getHeight(26)),
          Container(
            height: getHeight(198),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: isBloodPressure
                  ? LinearGradient(colors: [
                      kRedShade2Color,
                      kOrangeShade3Color,
                      kGreenShade6Color,
                      kYellowShadeColor,
                      kOrangeShade3Color,
                      kRedShade2Color
                    ], stops: [
                      0.2,
                      0.4,
                      0.4,
                      0.6,
                      0.6,
                      0.9
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                  : LinearGradient(colors: [
                      kGreenShade6Color,
                      kYellowShadeColor,
                      kOrangeShade3Color,
                      kRedShade2Color
                    ], stops: [
                      0.2,
                      0.5,
                      0.5,
                      0.9
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Center(
              child: CustomButton(
                height: 42,
                width: 133,
                textSize: 15,
                borderRadius: 9,
                borderColor: kBlackTextColor.withOpacity(0.1),
                color: kBlackTextColor.withOpacity(0.5),
                showShadow: false,
                title: "Data needed",
                onTap: () {},
              ),
            ),
          ),
          SizedBox(height: getHeight(26)),
          _buildRow(),
        ],
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: getHeight(10),
              width: getWidth(10),
              decoration: BoxDecoration(
                  color: kGreenShade6Color, shape: BoxShape.circle),
            ),
            SizedBox(width: getWidth(8)),
            Text("Optimal range", style: AppStyles.blackTextStyle()),
          ],
        ),
        SizedBox(width: getWidth(25)),
        Row(
          children: [
            Container(
              height: getHeight(10),
              width: getWidth(10),
              decoration:
                  BoxDecoration(color: kRedShade2Color, shape: BoxShape.circle),
            ),
            SizedBox(width: getWidth(8)),
            Text("Risk range", style: AppStyles.blackTextStyle()),
          ],
        ),
      ],
    );
  }
}
