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

class Cortisol extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Cortisol({super.key});

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
                title: "Cortisol: DHEA-S ratio", image: kBiomarker8),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Stress",
              icon: kFaceIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Cortisol: DHEA-S ratio"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "DHEA-S (dehydroepiandrosterone sulfate) and cortisol are hormones produced in the adrenal gland and are involved in the body's stress response and various physiological processes. DHEA-S is a steroid hormone and is a precursor to other hormones including testosterone and estrogen. DHEA-S levels tend to decrease with aging and the brain begins to lose the protective effects of the hormones made from DHEA. Cortisol, often referred to as the \"stress hormone,\" plays a vital role in the body's response to stress, helping regulate metabolism, blood pressure, and immune function. In times of stress, cortisol levels rise, preparing the body for the \"fight or flight\" response. Chronic stress can lead to persistently elevated cortisol levels, which can result in detrimental effects on the body. High levels of cortisol in relation to DHEA-S is associated with insomnia, anxiety, depression, impaired immune function, mortality, weight gain, metabolic syndrome, dementia, and cognitive decline. Additionally, it may contribute to bone loss, reduced muscle mass, and decreased energy levels, which are often associated with the aging process. Your cortisol to DHEA-S ratio can be measured with a blood assessment. A ratio of 0.2 or less is optimal, put simply, you want at least five DHEA-S for every one cortisol. A high ratio suggests chronic stress. Prolonged stress triggers the continuous release of cortisol, leading to reduced DHEA-S production. Other factors, such as poor sleep, unhealthy diet, lack of exercise, and certain medications, can also contribute to hormonal imbalances. To maintain a healthy cortisol to DHEA-S ratio, it is essential to manage stress effectively through relaxation techniques, regular exercise, sufficient sleep, and a balanced diet. Addressing these hormonal imbalances can promote better health and potentially slow down the aging process.Cortisol and DHEA-S are also crucial hormones affecting athletic performance. Cortisol's catabolic impact mobilizes nutrients for fuel, while DHEA-S has an anabolic effect, converting food into tissue. Balancing these hormones is vital for performance. “Burnout” syndrome can enlarge the amygdala, intensifying fear and threat perception, leading to a \"primitive\" response. Severe burnout symptoms may involve hypocortisolism, smaller ACTH responses, and low DHEA-S, indicating depleted adrenal reserves.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.cortisolHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
