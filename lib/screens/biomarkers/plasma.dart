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

class Plasma extends StatelessWidget {
  final BiomarkerController controller = Get.find();
  Plasma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(66)),
            BiomarkerHeader(title: "Plasma BDNF", image: kBiomarker10),
            SizedBox(height: getHeight(13)),
            BiomarkerTagSection(
              tag: "Depression",
              icon: kFaceIcon,
              isPremium: true,
            ),
            SizedBox(height: getHeight(19)),
            BiomarkerProgressBar(title: "Plasma BDNF"),
            SizedBox(height: getHeight(20)),
            BottomButtons(),
            SizedBox(height: getHeight(20)),
            ExpandableInfoSection(
              detail:
                  "Brain-derived neurotrophic factor (BDNF) is a protein that plays a crucial role in neuronal (brain cell) survival, growth, neurotransmitter modulation, and neuronal plasticity, making it essential for learning, memory, and higher cognitive functions. BDNF levels can be measured in blood plasma and is a useful biomarker for depression. Low plasma BDNF levels are associated with depression, mood disorders, and dementia, while greater concentrations are associated with healthy individuals. Low levels of BDNF is associated with reduced ability for the brain to adapt and reorganize (synaptic plasticity) which results in poorer learning and memory. Low BDNF levels are also linked to neuronal atrophy (loss of neurons, neuronal connections, and brain volume). Higher BDNF levels enhance neuronal growth and differentiation (neuronal development), influence strength and plasticity of neuronal connections (synaptic plasticity), neuron survival (neuroprotection), and generation of new neurons (neurogenesis). BDNF levels can be increased by vigorous exercise, cognitive stimulation, reducing stress, and improving sleep. Low BDNF may indicate that you are stressed, sedentary, have a poor diet, sleep deprived, have a neurological disorder, or have a mental health disorder. Plasma BDNF concentrations greater than 3000 pg/ml are considered optimal.",
              expand: controller.isInfoExpanded,
            ),
            SizedBox(height: getHeight(23)),
            buildHabits(
                title: "Habits to help this biomarker",
                textColor: kPrimaryColor,
                list: controller.plasmaHabits),
            SizedBox(height: getHeight(26)),
          ],
        ),
      ),
    );
  }
}
