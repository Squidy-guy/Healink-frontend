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

class BloodPressureScreen extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  BloodPressureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(
                title: "Blood pressure\n(sys./dia.)", image: kBiomarker4),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(tag: "Heart disease", icon: kHeartIcon),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(
              title: "Systolic blood pressure (mm/Hg)",
              firstTitle: "Systolic blood pressure (mm/Hg)",
              secondTitle: "Diastolic blood pressure (mm/Hg)",
              isBars: true,
              isBloodPressure: true,
            ),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "A blood pressure test shows the pressure of your artery when your heart contracts (systolic blood pressure) and the pressure of your artery when the heart is relaxed and filling with blood between heart beats (diastolic blood pressure). Blood pressure is measured using a blood pressure monitor that wraps around the biceps and inflates to detect the pressure in the arm’s artery. A blood pressure reading of “120/80mmHg” means the systolic pressure is 120mmHg and the diastolic pressure is 80mmHg. If your systolic pressure is above 120mmHg or your diastolic pressure is above 80mmHg, you have high blood pressure. High blood pressure puts you at risk of heart attack, stroke, and other cardiovascular diseases. Poor diet, smoking, alcohol use, lack of exercise, and stress can cause high blood pressure.",
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
