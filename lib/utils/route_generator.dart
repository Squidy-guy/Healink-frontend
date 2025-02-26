import 'package:get/get.dart';
import 'package:healink_app/screens/all_habits/exercise_habits_screen/fifth_exc_habit.dart';
import 'package:healink_app/screens/all_habits/exercise_habits_screen/first_exc_habit.dart';
import 'package:healink_app/screens/all_habits/exercise_habits_screen/fourth_exc_habit.dart';
import 'package:healink_app/screens/all_habits/exercise_habits_screen/third_exc_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/fifth_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/first_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/fourth_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/second_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/seventh_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/sixth_nutrition_screen.dart';
import 'package:healink_app/screens/all_habits/nutrition_habit_screen/third_nutrition_habit.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/fifth_res_habit.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/first_res_habit.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/fourth_res_habit.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/second_res_habit.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/sixth_res_screen.dart';
import 'package:healink_app/screens/all_habits/res_habit_screen/third_res_habit.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/fifth_sleep_habit.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/first_sleep_habit.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/fourth_sleep_habit.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/seventh_sleep_habit.dart';
import 'package:healink_app/screens/all_habits/sleep_habits_screen/sixth_sleep_screen.dart';
import 'package:healink_app/screens/all_habits/stim_habits_screen/fifth_sim_habit.dart';
import 'package:healink_app/screens/all_habits/stim_habits_screen/first_stim_habit.dart';
import 'package:healink_app/screens/all_habits/stim_habits_screen/fourth_stim_habit.dart';
import 'package:healink_app/screens/all_habits/stim_habits_screen/second_stim_habit.dart';
import 'package:healink_app/screens/all_habits/stim_habits_screen/third_stim_habit.dart';
import 'package:healink_app/screens/auth/forgot_password_screen.dart';
import 'package:healink_app/screens/auth/login_screen.dart';
import 'package:healink_app/screens/auth/new_passsword_screen.dart';
import 'package:healink_app/screens/auth/register_screen.dart';
import 'package:healink_app/screens/auth/verify_otp_screen.dart';
import 'package:healink_app/screens/biomarkers/blood_pressure_screen.dart';
import 'package:healink_app/screens/biomarkers/cortisol.dart';
import 'package:healink_app/screens/biomarkers/ct_dna.dart';
import 'package:healink_app/screens/biomarkers/dunedin.dart';
import 'package:healink_app/screens/biomarkers/fasting_blood_glucose_screen.dart';
import 'package:healink_app/screens/biomarkers/gfap.dart';
import 'package:healink_app/screens/biomarkers/grip_strength.dart';
import 'package:healink_app/screens/biomarkers/hs_protein_screen.dart';
import 'package:healink_app/screens/biomarkers/nad.dart';
import 'package:healink_app/screens/biomarkers/pbmh.dart';
import 'package:healink_app/screens/biomarkers/plasma.dart';
import 'package:healink_app/screens/biomarkers/triglycerides_screen.dart';
import 'package:healink_app/screens/biomarkers/vo2_max.dart';
import 'package:healink_app/screens/biomarkers/wait_to_hip_ratio.dart';
import 'package:healink_app/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:healink_app/screens/friends/friends_screen.dart';
import 'package:healink_app/screens/guides/exercise_guide_screen.dart';
import 'package:healink_app/screens/guides/nutrition_guide_screen.dart';
import 'package:healink_app/screens/guides/resilience_guide_screen.dart';
import 'package:healink_app/screens/guides/sleep_guide_screen.dart';
import 'package:healink_app/screens/guides/stimulation_guide_screen.dart';
import 'package:healink_app/screens/insights_screen/risk_report_screen.dart';
import 'package:healink_app/screens/insights_screen/simulation_activity_detail.dart';
import 'package:healink_app/screens/notification/notification_screen.dart';
import 'package:healink_app/screens/profile/about_app_screen.dart';
import 'package:healink_app/screens/profile/delete_account_screen.dart';
import 'package:healink_app/screens/profile/feedback_screen.dart';
import 'package:healink_app/screens/profile/my_account_screen.dart';
import 'package:healink_app/screens/profile/settings_screen.dart';
import 'package:healink_app/screens/profile_setup/congratulation_screen.dart';
import 'package:healink_app/screens/profile_setup/select_avatar_screen.dart';
import 'package:healink_app/screens/profile_setup/select_habit_screen.dart';
import 'package:healink_app/screens/starting_screens/splash_screen.dart';
import 'package:healink_app/screens/starting_screens/welcome_screen.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/screen_bindings.dart';

import '../screens/all_habits/exercise_habits_screen/second_exc_habit.dart';
import '../screens/all_habits/sleep_habits_screen/second_sleep_habit.dart';
import '../screens/all_habits/sleep_habits_screen/third_sleep_habit.dart';
import '../screens/disclaimer/discailmer_screen.dart';
import '../screens/insights_screen/sleep_activity_detail.dart';
import '../screens/insights_screen/insights_screen.dart';
import '../screens/lesson_detail_screen/lesson_detail_screen.dart';
import '../screens/privacy_policy/privacy_policy_screen.dart';
import '../screens/terms_conditions/terms_conditions.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: kSplashScreenRoute,
          page: () => const SplashScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kWelcomeScreenRoute,
          page: () => const WelcomeScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kRegisterScreenRoute,
          page: () => RegisterScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kLoginScreenRoute,
          page: () => LoginScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSForgotPassswordScreenRoute,
          page: () => ForgotPasswordScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kVerifyOtpScreenRoute,
          page: () => VerifyOtpScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kNewPasswordScreenRoute,
          page: () => NewPassswordScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSelectAvatarScreenRoute,
          page: () => AvatarSelectionScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kCongratulationsScreenRoute,
          page: () => CongratulationScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHabitSelectionScreenRoute,
          page: () => HabitSelectionScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kInsightScreenRoute,
          page: () => InsightsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kActivityDetailScreenRoute,
          page: () => SleepActivityDetailScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kBottomBarScreenRoute,
          page: () => BottomBarScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kMyAccountScreenRoute,
          page: () => MyAccountScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kDeleteAccountScreenRoute,
          page: () => DeleteAccountScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSettingsScreenRoute,
          page: () => SettingsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kAboutAppScreenRoute,
          page: () => AboutAppScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kFeedbackScreenRoute,
          page: () => FeedbackScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kNotificationsScreenRoute,
          page: () => NotificationScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kFriendsScreenRoute,
          page: () => FriendsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kSleepGuideScreenRoute,
          page: () => SleepGuideScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kStimulationGuideScreenRoute,
          page: () => StimulationGuideScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kNutritionGuideScreenRoute,
          page: () => NutritionGuideScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kResilienceGuideScreenRoute,
          page: () => ResilienceGuideScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kExerciseGuideScreenRoute,
          page: () => ExerciseGuideScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kFastingBloodGlucoseScreenRoute,
          page: () => FastingBloodGlucoseScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kTriglyceridesScreenRoute,
          page: () => TriglyceridesScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kHsProteinScreenRoute,
          page: () => HsProteinScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kBloodPressureScreenRoute,
          page: () => BloodPressureScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kWaistToHipRatioScreenRoute,
          page: () => WaitToHipRatio(),
          binding: ScreenBindings()),
      GetPage(
          name: kVo2MaxScreenRoute,
          page: () => Vo2Max(),
          binding: ScreenBindings()),
      GetPage(
          name: kGripStrengthScreenRoute,
          page: () => GripStrength(),
          binding: ScreenBindings()),
      GetPage(
          name: kCortisolScreenRoute,
          page: () => Cortisol(),
          binding: ScreenBindings()),
      GetPage(
          name: kPbmcScreenRoute,
          page: () => Pbmh(),
          binding: ScreenBindings()),
      GetPage(
          name: kPlasmaScreenRoute,
          page: () => Plasma(),
          binding: ScreenBindings()),
      GetPage(
          name: kNadScreenRoute, page: () => Nad(), binding: ScreenBindings()),
      GetPage(
          name: kDunedinScreenRoute,
          page: () => Dunedin(),
          binding: ScreenBindings()),
      GetPage(
          name: kCtDnaScreenRoute,
          page: () => CtDna(),
          binding: ScreenBindings()),
      GetPage(
          name: kGfapScreenRoute,
          page: () => Gfap(),
          binding: ScreenBindings()),
      GetPage(
          name: kRiskReportScreenRoute,
          page: () => RiskReportScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kFirstSleepHabitDetailRoute,
          page: () => FirstSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondSleepHabitDetailRoute,
          page: () => SecondSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kThirdSleepHabitDetailRoute,
          page: () => ThirdSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFourthSleepHabitDetailRoute,
          page: () => FourthSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFifthSleepHabitDetailRoute,
          page: () => FifthSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSixthSleepHabitDetailRoute,
          page: () => SixthSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSeventhSleepHabitDetailRoute,
          page: () => SeventhSleepHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFirstStimulationHabitDetailRoute,
          page: () => FirstStimulationHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondStimulationHabitDetailRoute,
          page: () => SecondStimulationHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kThirdStimulationHabitDetailRoute,
          page: () => ThirdStimulationHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFourthStimulationHabitDetailRoute,
          page: () => FourthStimulationHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFifthStimulationHabitDetailRoute,
          page: () => FifthStimulationHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFirstNutHabitDetailRoute,
          page: () => FirstNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondNutHabitDetailRoute,
          page: () => SecondNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kThirdNutHabitDetailRoute,
          page: () => ThirdNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFourthNutHabitDetailRoute,
          page: () => FourthNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFifthNutHabitDetailRoute,
          page: () => FifthNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSixthNutHabitDetailRoute,
          page: () => SixthNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSeventhNutHabitDetailRoute,
          page: () => SeventhNutritionHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFirstResHabitDetailRoute,
          page: () => FirstResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondResHabitDetailRoute,
          page: () => SecondResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kThirdResHabitDetailRoute,
          page: () => ThirdResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFourthResHabitDetailRoute,
          page: () => FourthResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFifthResHabitDetailRoute,
          page: () => FifthResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSixthResHabitDetailRoute,
          page: () => SixthResilienceHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFirstExcHabitDetailRoute,
          page: () => FirstExerciseHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kSecondExcHabitDetailRoute,
          page: () => SecondExerciseHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kThirdExcHabitDetailRoute,
          page: () => ThirdExerciseHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFourthExcHabitDetailRoute,
          page: () => FourthExerciseHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kFifthExcHabitDetailRoute,
          page: () => FifthExerciseHabitDetail(),
          binding: ScreenBindings()),
      GetPage(
          name: kLessonDetailScreenRoute,
          page: () => LessonDetailScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kPrivacyPolicyScreenRoute,
          page: () => PrivacyPolicyScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kDisclaimerScreenRoute,
          page: () => DisclaimerScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: kTermsConditionsScreenRoute,
          page: () => TermsConditionScreen(),
          binding: ScreenBindings()),
    ];
  }
}
