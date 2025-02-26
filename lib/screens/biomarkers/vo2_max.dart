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

class Vo2Max extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Vo2Max({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "VO2 max", image: kBiomarker6),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Longevity",
              icon: kMuscleIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "VO2 max"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Cardiorespiratory fitness is measured by the maximum rate of oxygen consumption during physical activity (VO2max) of the lungs and is expressed in ml/kg/min. VO2max can be measured directly using a facemask connected to a gas analyser that measures the volume and gas concentrations inhaled and exhaled while running on a treadmill at an intensity that increases every few minutes until exhaustion. However, this can be costly and requires specialist equipment. VO2max can instead be accurately measured indirectly with the Cooper 2.4 km (1.5 mile) run test. This simple yet accurate indirect measure predicting VO2max has been adopted by the US Navy, FBI, and secret services. The test involves running a flat 2.4 km course in the shortest time possible (maximum effort) while timing it. The equation to calculate your VO2max is (483 / time [in minutes]) + 3.5. So, if you run the course in ten minutes then your estimated VO2max is (483 / 10) + 3.5 = 51.8 ml/kg/min. Generally, a VO2max greater than 50 ml/kg/min is considered optimal for men, and greater than 42 ml/kg/min is considered optimal for women. A VO2max measurement indicates your cardiopulmonary and aerobic performance capabilities and is a strong independent predictor of all-cause mortality and disease-specific mortality. Lack of vigorous exercise can result in a poor VO2max. Everyone should try to increase their VO2max, regardless of athletic ability. However, the testing of VO2max is very high-intensity, so it should only be undertaken if you are in good health.",
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
