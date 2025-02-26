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

class FastingBloodGlucoseScreen extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  FastingBloodGlucoseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "Fasting blood glucose", image: kBiomarker2),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(tag: "Diabetes", icon: kSlimIcon),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Fasting blood glucose"),
            SizedBox(height: getHeight(20)),
            BottomButtons(
              title: "Cholesterol ratio (total/HDL)",
            ),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Fasting blood glucose is the amount of glucose (sugar) remaining in the blood after fasting (not eating) for at least 8 hours. This fast is usually best done overnight so that blood sugar can be conveniently tested in the morning. The test is performed either by a blood draw or glucometer. The test result shows your baseline glucose level which shows how well your insulin response is able to lower circulating blood glucose. Insulin (hormone) helps body cells uptake blood sugar to use for energy and also store sugar for later use. Prolonged high blood glucose may cause the body to stop responding to insulin. This is known as insulin resistance, where blood glucose and insulin levels remain high abnormally long after eating. This can develop into pre-diabetes and diabetes. Healthcare providers often order fasting blood glucose tests to screen for diabetes. Regular testing can help you make corrective lifestyle changes. A poor diet and sedentary lifestyle commonly contribute to the development of diabetes.",
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
