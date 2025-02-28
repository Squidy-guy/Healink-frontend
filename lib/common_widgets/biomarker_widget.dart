import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildBiomarkersWidget({required Map<String, dynamic> item}) {
  final BiomarkerController controller = Get.find();

  return Container(
    padding:
        EdgeInsets.symmetric(horizontal: getWidth(16), vertical: getHeight(24)),
    margin: EdgeInsets.only(bottom: getHeight(20)),
    decoration: BoxDecoration(
        color: kWhiteColor, borderRadius: BorderRadius.circular(24)),
    child: Row(
      children: [
        Image.asset(item["image"], height: getHeight(48), width: getWidth(48)),
        SizedBox(width: getWidth(22)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item["name"],
                style: AppStyles.blackTextStyle()
                    .copyWith(fontWeight: FontWeight.w600, color: kBlackColor)),
            SizedBox(height: getHeight(10)),
            Row(
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
                      Image.asset(item["icon"],
                          height: getHeight(15), width: getWidth(15)),
                      SizedBox(width: getWidth(10)),
                      Text(item["category"],
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
                      color: controller.isRisks.value
                          ? kRedShade3Color
                          : kBlackTextColor,
                      borderRadius: BorderRadius.circular(33)),
                  child: Row(
                    children: [
                      if (controller.isRisks.value) ...[
                        Image.asset(kWarningIcon,
                            height: getHeight(15), width: getWidth(15)),
                        SizedBox(width: getWidth(10)),
                      ],
                      Center(
                        child: Text(
                            controller.isRisks.value ? "Risk" : "Need data",
                            style: AppStyles.whiteTextStyle().copyWith(
                                fontSize: 12.sp, fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
