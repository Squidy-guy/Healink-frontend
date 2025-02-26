import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_button.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utils/app_styles.dart';

class ExpandableInfoSection extends StatelessWidget {
  final String detail;
  final RxBool expand;
  final BiomarkerController controller = Get.find();

  ExpandableInfoSection(
      {super.key, required this.detail, required this.expand});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: controller.toggleInfoExpansion,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Information",
                    style: AppStyles.primaryTextStyle().copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w700)),
                SizedBox(height: getHeight(16)),
                Text(
                  detail,
                  maxLines: expand.value ? 100 : 5,
                  style: AppStyles.blackTextStyle().copyWith(
                      fontSize: 16.sp, overflow: TextOverflow.ellipsis),
                ),
                if (expand.value) ...[
                  SizedBox(height: getHeight(16)),
                  Row(
                    children: [
                      Text(
                        "Source info",
                        style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 16.sp,
                            overflow: TextOverflow.ellipsis,
                            decoration: TextDecoration.underline,
                            decorationColor: kBlackTextColor),
                      ),
                      Icon(Icons.arrow_forward,
                          color: kBlackTextColor, size: 18.sp)
                    ],
                  ),
                ],
                SizedBox(height: getHeight(16)),
                Center(
                  child: CustomButton(
                    height: 48,
                    width: 345,
                    textColor: kPrimaryColor,
                    color: kWhiteColor,
                    borderColor: kPrimaryColor,
                    showShadow: false,
                    onTap: controller.toggleInfoExpansion,
                    title: controller.isInfoExpanded.value
                        ? "Show less"
                        : "Show more",
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
