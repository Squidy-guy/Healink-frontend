import 'package:get/get.dart';
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

import '../screens/insights_screen/activity_detail.dart';
import '../screens/insights_screen/insights_screen.dart';

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
          page: () => ActivityDetailScreen(),
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
    ];
  }
}
