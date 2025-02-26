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

class NutritionGuideScreen extends StatelessWidget {
  final GuidesController controller = Get.find();

  NutritionGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: getHeight(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: "Nutrition", image: kCategory3),
            SizedBox(height: getHeight(16)),
            buildDescription(
              expanded: controller.isNutritionExpanded,
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
                sessions: controller.nutritionSessions,
                color: kGreenShade4Color),
            SizedBox(height: getHeight(20)),
            buildHabits(
              title: " Nutrition habits",
              list: controller.nutritionHabits,
              textColor: kGreenShade5Color,
            ),
            SizedBox(height: getHeight(24)),
            buildDetails(
                textColor: kGreenShade5Color,
                image: kNutrition1,
                title: "Mediterranean Diet",
                detail: """
The typical western diet of appealing ‘super-stimuli’ foods is not consistent with the diet we have evolved to eat: a more natural diet of whole-foods, that is plant-based; one free of processed foods and with mostly plants.

There is wide scientific consensus that the Mediterranean diet, which is whole-foods and mostly plants, is the optimal diet and is associated with the greatest health outcomes. Compared to a modern western diet, the Mediterranean diet offers low risk of cardiovascular diseases, hypertension, depression, obesity, diabetes, and dementia. 

Eating processed foods typically contributes to cellular and DNA damage, more rapid aging, earlier disease onset, and a shorter lifespan. Research showed that people who followed the Mediterranean pattern of eating were 46% more likely to age healthily. This pattern of eating includes foods that are high in antioxidants (repairs damage and protects cells) while also excludes foods that are high in oxidants that irreversibly damage (oxidize) DNA and biomolecules. 
Fruit, Vegetables, grains, nuts, seeds, beans, legumes, herbs and spices are the largest portion of the diet. Olive oil, nuts, and fish are favored over butter and margarine. The preference of animal products is fish and seafood (~2 days per week) with little to no red meat and less poultry, eggs, and dairy.

Foods that are consistent with the mediterranean pattern of eating: 
Sweet potato
Butternut pumpkin
Avocado
Kale
Spinach
Parsley
Lemon
Capcicum
Mushrooms
Green beans
Green peas
Onion
Chili
Garlic
Jalapeno
Lime
Coriander
Carrot
Ginger
Broccoli
Brocollini
Shallot
Basil
Asparagus
Apples
Bananas
Blackberries
Raspberries
Blueberries
Pomegranate
Oats
Barley
Brown rice
Quinoa
Buckwheat
Pistachios
Pecans
Walnuts
Almonds
Hemp seeds
Chia seeds
Green lentils
Mung beans
Cashews
Macadamias
Red kidney beans
Black beans
Pinto beans
Tomato
Extra virgin olive oil
Cinnamon
Mixed herbs
Paprika
Cumin
Turmeric
Salmon
Muscles
Prawns
Shrimp
Squid 
Chicken 
Yogurt (natural)
Cheese (natural)
"""),
            buildDetails(
                textColor: kGreenShade5Color,
                image: kNutrition2,
                title: "Intermittent Fasting",
                detail: """
Intermittent fasting, also known as windowed fasting or “16/8” fasting, has proven to be an effective health behavior that increases lifespan, prevents various diseases, and is even better for weight-loss than caloric restriction. Research shows that fasting for 12-16 hours each day supports a healthy metabolism while fasting for less than 10 hours per day is associated with metabolic abnormalities such as obesity and diabetes. Time-restricted feeding has beneficial metabolic effects, reduces insulin resistance, and increases glucose tolerance; helping prevent and manage metabolic syndrome (e.g. obesity and diabetes).

Additionally, eating a filling breakfast is so important that skipping it is associated with weight gain, atherosclerosis, heart disease, hypertension, diabetes, high cholesterol and stress hormone, and a slower metabolism. A filling dinner provides an individual with enough carbohydrates to sustain them throughout the night, support sleep, and prevent snacking late a night. It helps if enough carbohydrates are ingested to last the night so the individual can still sleep. Trying to sleep on an empty stomach can cause us to be in an alert fight-or-flight state rather than a relaxed state that supports rest and digestion.
"""),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Example: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " having the last meal of the day at 5 pm and first meal of the next day at 7 am is a 14 hour fast period.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting   fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Research suggests that eating 3-5 times per day is best for optimal health.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: RichText(
                  text: TextSpan(
                      text: "Interesting   fact: ",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700),
                      children: [
                    TextSpan(
                      text:
                          " Irregular feeding times disrupts our circadian biology and leaves us susceptible to metabolic abnormalities. So, it’s best to eat at approximately the same time everyday (+/- 30 minutes).\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
                textColor: kGreenShade5Color,
                image: kNutrition3,
                title: "Sunlight and Vitamin D",
                detail: """
Sunlight contains ultraviolet-B radiation that, when in contact with the skin, causes the body to produce vitamin D. Vitamin D is an important nutrient as it is required for the intestines to be able to absorb calcium from food.

A vitamin D deficiency can cause osteoporosis and reduced bone mineral density due to abnormal calcium, phosphorus, and bone metabolism. It can also cause muscle weakness and affect the ability to walk and balance in old age (and in children). 
Almost half of all people are affected by a vitamin D deficiency. This is mostly due to lifestyle (little time spent outdoors). A deficiency of vitamin D is also a risk factor for mortality.

People with dark skin living further from the equator are especially at risk due to their greater amounts of melanin in the skin that absorbs UVB and, therefore, require more sun exposure to produce the same amount of vitamin D. Older people are also at risk of deficiency as they spend less time outdoors and their skin synthesizes vitamin D less efficiently.

It is important to highlight that too much sun exposure can cause skin cancer and eye damage.

Adequate sun exposure depends on (1) skin melanin (darkness of skin), (2) duration in the sun, and (3) current UV intensity. Darker skin people require greater exposure than lighter skin people. The duration required each week for optimal vitamin D synthesis will also depend on the UV index (intensity of UV radiation) which varies depending on geographic location (latitude), time of day, and season.

Generally, when the UV index is above 3 (e.g. spring and summer) spending a few minutes outside most days of the week is suitable. In late autumn and winter (especially in regions further from the equator) when the UV index is less than 3, it’s best to spend more time outside (e.g. an hour or two) most days of the week with uncovered skin during the middle of the day.

A general guide is to spend time outdoors at least 4 days per week (with longer durations and more exposed skin in autumn and winter).
"""),
            buildDetails(
                textColor: kGreenShade5Color,
                image: kNutrition4,
                title: "Sunlight and Vitamin D",
                detail: """
Body water deficits impair the ability to maintain homeostasis during stressors such as sickness, physical exercise, and environmental exposures.

Water intake and hydration affects cognitive, emotional, renal, and gastrointestinal function as well as fatigue, skin hydration, and physical performance.
The old rule to “drink 8 cups a day” is not scientifically valid and may not be always appropriate as the amount one needs varies greatly and depends on level of activity, weather, body size, gender, age, electrolyte status, overall health and sickness and more. Though it can be used as a general guide. Sensations of thirst and urine color are better indicators.

Adequate hydration is a matter of fluid-electrolyte balance and replacing water that you lose. Drink too much fluids and electrolytes become diluted, disrupting the balance. Drink too little and dehydration occurs. It’s also important to not feel like you must frequently drink fluids despite not feeling thirsty, but instead, drink only when you’re thirsty to avoid disrupting fluid and electrolyte balance. However, clear or slightly yellow urine is another often useful indicator of good hydration.
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
                          " around 500 mL of water is typically lost via breathing while sleeping each night. Consider drinking 500 mL of water when you wake up!\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          "  for older adults, the sensation of dehydration and urge to drink is delayed from the actual point they become dehydrated. So for these individuals, a conscious habit to drink is more necessary. Try carrying a water bottle with you wherever you go if you have a poor thirst sensation (or even if you don’t!)\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          " For extreme exercise (e.g. marathon running) drinking electrolyte beverages (sports drinks) can be helpful in preventing electrolyte deficits (e.g. sodium loss by profuse sweating) but is not necessary for normal exercise.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          " sometimes our body confuses thirst for hunger, so next time you feel snack-ish, try having some water instead.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
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
                          " Electrolytes are minerals (sodium, potassium, calcium, magnesium, chloride) that we get electrolytes from food and water. They conduct electricity when dissolved in water to help to maintain fluid balance in the body and within our cells. They are essential for controlling fluid balance, regulating blood pressure, muscle contraction (including the heart) and maintaining blood pH.\n",
                      style:
                          AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                    )
                  ])),
            ),
            buildDetails(
              textColor: kGreenShade5Color,
              image: kNutrition5,
              title: "Avoid Lifestyle Toxins",
              detail: "",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(23)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Junk food",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                  SizedBox(height: getHeight(16)),
                  Text(
                    """
Eating processed foods typically contributes to cellular and DNA damage, more rapid aging, earlier disease onset, and a shorter lifespan. Processed foods tend to have nutrient compositions that are not suitable for human nutritional requirements and metabolism. Sausages, burger patties, french fries, deep-fried chicken, and pizzas all tend to contain excessive amounts of saturated fats, trans fats, cholesterol, and overall fats, which is associated with hypertension, atherosclerosis, heart attack, and stroke. Processed red meat such as sausages and bacon are especially detrimental to humans. Just 25g of bacon per week (one rasher) is associated with a 44% increase in risk of dementia. Breakfast cereals and bars, pies, pastries, instant soup, or mass-produced bread tend to also be unbalanced along with processed snacks such as sweets, crisps, chocolate, fruit juice, soft drinks, donuts, pies, milk shakes, cakes, ice cream, cereal bars, or biscuits. These foods are unbalanced in that they typically contain higher amounts of simple sugars, contributing to obesity, hypertension, and diabetes. It is this exclusion of processed and ultra-processed foods that makes the Mediterranean eating pattern supportive of human health.
                  """,
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                  ),
                  Text("Alcohol",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                  SizedBox(height: getHeight(16)),
                  Text(
                    """
Alcohol is a carcinogenic neurotoxin, detrimental to brain health and contributes to cognitive impairments and dementia. Alcohol use contributes to depression which can increase risk of alcohol use as an unhealthy coping strategy (secondary alcoholism or depression-induced alcoholism).
                  """,
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                  ),
                  Text("Nicotine",
                      style: AppStyles.blackTextStyle().copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                  SizedBox(height: getHeight(16)),
                  Text(
                    """
Nicotine’s toxicity contributes to cancer and cardiovascular diseases. It also degrades the medial habenula (brain region). Smoking is also responsible for nonmalignant respiratory diseases (COPDs: emphysema, chronic bronchitis, and asthma) which contribute to mortality. Exposure to nicotine while pregnant is especially detrimental as it causes damage to the developing brain of the embryo as well as cause transgenerational epigenetic changes. The positive stimulant effects of nicotine are used by many to cope with their environments. People with psychological and psychiatric disorders, and a poor ability to cope, are more likely to smoke than those that are emotionally resilient. People who smoke are more likely to use other drugs: alcohol, cannabis, amphetamines, and diet pills. In addition to psychological factors, social factors such as peers and parents contribute to initiating nicotine use. Smoking is the largest preventable cause of death.
                  """,
                    style: AppStyles.blackTextStyle().copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
