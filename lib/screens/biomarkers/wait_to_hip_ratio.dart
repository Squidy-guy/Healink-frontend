import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/biomarker_header.dart';
import 'package:healink_app/common_widgets/biomarker_info_list.dart';
import 'package:healink_app/common_widgets/biomarker_progress_bar.dart';
import 'package:healink_app/common_widgets/biomarker_tags.dart';
import 'package:healink_app/common_widgets/bottom_buttons.dart';
import 'package:healink_app/common_widgets/habit_row_widget.dart';
import 'package:healink_app/screens/biomarkers/controller/biomarker_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';

class WaitToHipRatio extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  WaitToHipRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "Waist-to-hip ratio", image: kBiomarker5),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(tag: "Diabetes", icon: kSlimIcon),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Waist-to-hip ratio"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Your wait-to-hip ratio (WHR) is determined by first measuring the circumference of your waist at the narrowest point (just under your lowest rib) and your hips at the widest point. You then divide the waist measurement by the hip measurement (e.g., 81cm / 94cm = 0.86 ratio). The measurements can be taken using a soft flexible measuring tape. WHR measurements are used to help identify obesity or excess adiposity (fat tissue). A WHR of less than 1.0 is optimal and means that your waist is narrower than your hips. A WHR greater than 1.0 increases your risk of health issues such as diabetes, cancer, dementia, depression, and heart disease. A high WHR can be caused by poor diet, inconsistent sleep, lack of exercise, smoking, or stress.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.bloodGlucoseHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
