import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_text_field.dart';
import 'package:healink_app/screens/insights_screen/controller/report_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void reportDialog(BuildContext context) {
  final ReportController controller = Get.find();

  Get.dialog(
    Dialog(
        backgroundColor: kBgColor,
        insetPadding: EdgeInsets.symmetric(horizontal: getWidth(14)),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsetsDirectional.all(18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          kArrowIcon,
                          height: getHeight(15),
                          width: getWidth(15),
                        )),
                    Text(
                      "Resources",
                      style: AppStyles.blackTextStyle()
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(19),
                ),
                SizedBox(
                  height: getHeight(93),
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(19),
                      child: Image.asset(
                        kDiseaseBanner,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: getHeight(23),
                ),
                CustomTextField(
                  hintText: "Search articles",
                  borderColor: kBlackColor,
                  showShadow: false,
                ),
                SizedBox(
                  height: getHeight(22),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => Text(
                          "${controller.selectedFilter.value} articles",
                          style: AppStyles.blackTextStyle().copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    PopupMenuButton<String>(
                      position: PopupMenuPosition.under,
                      color: kWhiteColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(color: kBlackTextColor, width: 1)),
                      icon: Image.asset(kFilterIcon,
                          height: getHeight(24), width: getWidth(24)),
                      onSelected: (value) {
                        controller.updateFilter(value);
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: "Biomarker",
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Biomarker",style: AppStyles.blackTextStyle().copyWith(color: controller.selectedFilter.value == "Biomarker"?kBlueShade6Color:kBlackTextColor,fontSize: 16.sp,),),
                              Divider(
                                
                                  thickness: 1,
                                  color: kBlackTextColor), // Divider added here
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: "Disease/morbidity",
                          child: Text("Disease/morbidity",style: AppStyles.blackTextStyle().copyWith(color: controller.selectedFilter.value != "Biomarker"?kBlueShade6Color:kBlackTextColor,fontSize: 16.sp,)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(22),
                ),
                SizedBox(
                    height: getHeight(430),
                    width: MediaQuery.of(context).size.width,
                    child: Obx(
                      () => ListView.builder(
                        itemCount: controller.filteredArticles.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          var data = controller.filteredArticles[index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: getHeight(20)),
                            child: Container(
                              height: getHeight(67),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: kWhiteColor),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getWidth(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: getWidth(250),
                                      child: Text(
                                        data['title']!,
                                        style: AppStyles.blackTextStyle()
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Image.asset(
                                      kShareIcon,
                                      height: getHeight(24),
                                      width: getWidth(24),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )),
              ],
            ),
          ),
        )),
    barrierDismissible: false,
  );
}
