import 'package:get/get.dart';
import 'package:healink_app/screens/auth/forgot_password_screen.dart';
import 'package:healink_app/screens/auth/login_screen.dart';
import 'package:healink_app/screens/auth/new_passsword_screen.dart';
import 'package:healink_app/screens/auth/register_screen.dart';
import 'package:healink_app/screens/auth/verify_otp_screen.dart';
import 'package:healink_app/screens/profile_setup/congratulation_screen.dart';
import 'package:healink_app/screens/profile_setup/select_avatar_screen.dart';
import 'package:healink_app/screens/profile_setup/select_habit_screen.dart';
import 'package:healink_app/screens/starting_screens/splash_screen.dart';
import 'package:healink_app/screens/starting_screens/welcome_screen.dart';
import 'package:healink_app/utils/app_strings.dart';
import 'package:healink_app/utils/screen_bindings.dart';

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
    ];
  }
}
