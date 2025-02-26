import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/description_widget.dart';
import 'package:healink_app/common_widgets/details_widget.dart';
import 'package:healink_app/common_widgets/guides_header.dart';
import 'package:healink_app/common_widgets/habit_row_widget.dart';
import 'package:healink_app/common_widgets/sessions_widget.dart';
import 'package:healink_app/screens/guides/controller/guides_controller.dart';
import 'package:healink_app/utils/app_colors.dart';
import 'package:healink_app/utils/app_images.dart';
import 'package:healink_app/utils/app_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExerciseGuideScreen extends StatelessWidget {
  final GuidesController controller = Get.find();

  ExerciseGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: "Exercise", image: kCategory5),
            SizedBox(height: getHeight(16)),
            buildDescription(
              expanded: controller.isExerciseExpanded,
              lessText: """
Although the natural drive to consume sugar, salt, and fat has been a survival advantage throughout our evolution, given the modern era’s unnatural abundance of food products with unbalanced nutrient compositions, it has contributed to disease and suffering.
""",
              fullText: """
Although the natural drive to consume sugar, salt, and fat has been a survival advantage throughout our evolution, given the modern era’s unnatural abundance of food products with unbalanced nutrient compositions, it has contributed to disease and suffering.

The typical western diet contributes to obesity, diabetes, atherosclerosis, hypertension, cancer, dementia, and other major causes of premature death and disability.

The typical western diet of appealing ‘super stimuli’ foods is not consistent with the diet we have evolved to eat: a more natural diet of whole-foods, that is plant-based; one free of processed foods and with mostly plants.
""",
            ),
            SizedBox(height: getHeight(15)),
            buildSessionsList(
                sessions: controller.exerciseSessions, color: kRedShade1Color),
            SizedBox(height: getHeight(20)),
            buildHabits(
              title: "Exercise habits",
              list: controller.exerciceHabits,
              textColor: kRedShadeColor,
            ),
            SizedBox(height: getHeight(24)),
            buildDetails(
                textColor: kRedShadeColor,
                image: kExercise1,
                title: "Aerobic Exercise",
                detail: """
Humans have not evolved to cope with a sedentary lifestyle. Lack of physical exercise contributes to aging and contributes to various major diseases: heart disease, hypertension, stroke, diabetes, cancer, and Alzheimer's. 

Exercise guidelines based on health research are 150 minutes of moderate exercise (such as brisk walking, jogging, and riding) per week for adults (even for elderly people) and 60 minutes per day for children. Most adults and children do not meet these guidelines. For beginners, it’s best to start small and do at least some physical activity and work toward 30 minutes per day at least 5 days per week.

Daily exercise improves sleep drive, cognitive functioning (e.g. learning and memory), and emotional regulation. Going for exercise outside in the morning is great for our circadian rhythm.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Helpful tip: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " if you’re having trouble sleeping at night, it might be a sign you’re not getting enough exercise.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Physical exercise greatly improves mood and is a highly effective treatment for depression and anxiety. Exercise upregulates various neurotransmitters such as dopamine, serotonin, and endogenous morphine (endorphins).\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kRedShadeColor,
                image: kExercise2,
                title: "Strength Training",
                detail: """
Resistance training improves and preserves musculoskeletal health and neuromuscular function. Bone tissue must be exposed to mechanical load greater than that of typical daily activities to stimulate osteogenesis, increasing bone density. Similarly, muscles require increased mechanical load to increase and preserve mass and strength. Resistance exercise (e.g. strength training such as weightlifting) is known to greatly aid in preservation of bone and muscle mass, mitigating osteosarcopenia (bone and muscle mass loss). 

The Physical Activity Guidelines for Americans is to exercise all major muscle groups at least twice per week (e.g. 2-3 days per week) and allow a muscle at least two days for recovery and repair. Regular strength training is associated with a 46% lower mortality risk in elderly.

Research shows that power and strength performance is typically better in the afternoon (peaking at around 4pm), and that the weight loss and cholesterol lowering effects of exercise are also greater around this time. Compound exercises such as squats, bench press, and rows are good for strength training. Strength training also increases sleep drive. Though, exercising too close to bedtime can be detrimental to sleep.
"""),
            buildDetails(
                textColor: kRedShadeColor,
                image: kExercise3,
                title: "Flexibility Training",
                detail: """
Stretching exercises such as yoga increase flexibility by lengthening muscles that otherwise shorten as we sit and exercise. Shorter, less flexible muscles fibers can increase risk of injury, back pain, and poor balance.

Stretching muscles increases flexibility, balance, and athletic performance and is a great way to get active in the morning or relax in the evening. Although flexibility exercises are also beneficial when done after exercise, this static stretching is not recommended before exercise as it can decrease performance (cold muscles are not flexible). Instead, warm-up activities such as walking or sport-specific movements are more appropriate prior to physical activity. This increases blood flow and oxygen to muscles.

The American College of Sport Medicine guidelines for flexibility training are to perform a static stretching exercise routine at least 3 days per week (ideally 5 to 7 days) especially on days when you exercise.
Avoid bouncing on a stretch as it triggers the contracting reflex which actually tightens the muscle. Aim to extend the muscle to the point of moderate tension (not pain) and hold that position. Aim to hold a stretch for 10 to 30 seconds at a time and for one minute in total. Just as with strength training, it is best to stretch all muscle groups.

Great stretching positions you can try are knees-to-chest, spinal twist, downward dog stretch, low lung, and revolved head-to-knee stretch.
"""),
            buildDetails(
                textColor: kRedShadeColor,
                image: kExercise4,
                title: "Sitting and Moving",
                detail: """
Although it is natural to spend much of the day sitting, the issue is that people now tend to spend long continuous periods of time being inactive. Humans have not evolved to cope with a sedentary lifestyle. Sedentary individuals have a 52% higher mortality rate than active individuals. The solution is to get off the chair regularly to prevent inflammation and get the blood moving to prevent clotting. 

Prolonged periods of sitting or lying can offset the benefits of physical exercise. Being sedentary for extended periods of time during the day can increase one’s risk of death, regardless of whether one is meeting daily exercise recommendations. 

Many people also tend to inappropriately become more sedentary as they age, especially in the west. Researchers found that sitting for more than 30 minutes at a time was associated with an increased risk of mortality from all causes. Getting up every 10-30 minutes to become active (e.g. walk, stretch, or dance) for even just 1 minute appears to be the best behavior pattern.

In addition to avoiding extended periods of sitting, total time sitting per day is another important risk factor. Research shows that sitting for more than 9 hours in total per day is a risk factor for mortality and disease. The average US adult spends 11-12 hours per day sedentary. Though, bouts of uninterrupted sedentary behavior appear to be more adverse than total sedentary time.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Fun fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " getting up to move regularly also helps deliver blood and oxygen to the brain to support cognitive functioning, making it great to do before a big test, presentation, or meeting.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kRedShadeColor,
                image: kExercise5,
                title: "High-Intensity Interval\nTraining",
                detail: """
Humans have not evolved to cope with a sedentary lifestyle. Lack of physical exercise contributes to aging and contributes to various major diseases: heart disease, hypertension, stroke, diabetes, cancer, and Alzheimer's.

High-intensity cardiovascular exercise (such as sprinting), in addition to moderate-intensity (such as brisk walking, jogging, and riding), has powerful positive effects on our health. Research shows that high-intensity interval training (HIIT) sessions (as short as even 10 minutes) offer many of the benefits of moderate-intensity exercise but to a greater extent. 
Given that people worldwide report “lack of time” as the main reason for not doing physical exercise, low-volume, high-intensity protocols such as HIIT may be ideal for many people.

Vigorous exercise greatly improves sleep drive, cognitive functioning (e.g. learning and memory), and emotional regulation.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " aerobic exercise (especially high intensity) causes the brain to produce more of a growth hormone called BDNF, which enhances neural growth and plasticity, learning and memory, and stimulates neural stem cell development.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
