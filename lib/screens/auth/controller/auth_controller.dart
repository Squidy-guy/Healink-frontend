import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healink_app/common_widgets/custom_snacbar.dart';
import 'package:healink_app/utils/app_strings.dart';

class AuthController extends GetxController {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var loginEmailController = TextEditingController();
  var loginPasswordController = TextEditingController();
  var forgotPassEmailController = TextEditingController();
  var newPasswordController = TextEditingController();
  var newConfirmPasswordController = TextEditingController();
  var code = ''.obs;
  var isAgreed = false.obs;
  var rememberMe = false.obs;
  var isPasswordVisible = false.obs;
  var isConfirmPasswordVisible = false.obs;
  var isLoginPasswordVisible = false.obs;
  var isNewPasswordVisible = false.obs;
  var isNewConfirmPasswordVisible = false.obs;

  var firstNameFocusNode = FocusNode();
  var lastNameFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var passwordFocusNode = FocusNode();
  var confirmPasswordFocusNode = FocusNode();
  var loginEmailFocusNode = FocusNode();
  var loginPasswordFocusNode = FocusNode();
  var forgotEmailFocusNode = FocusNode();
  var newPasswordFocusNode = FocusNode();
  var newConfirmPasswordFocusNode = FocusNode();

  void toggleAgreement() {
    isAgreed.value = !isAgreed.value;
  }

  void toggleRememberMe() {
    rememberMe.value = !rememberMe.value;
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleLoginPasswordVisibility() {
    isLoginPasswordVisible.value = !isLoginPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible.value = !isNewPasswordVisible.value;
  }

  void toggleNewConfirmPasswordVisibility() {
    isNewConfirmPasswordVisible.value = !isNewConfirmPasswordVisible.value;
  }

  void register() {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      showCustomSnackbar('Error', 'All fields must be filled');
      return;
    }
    if (!isAgreed.value) {
      showCustomSnackbar('Error', 'You must agree to the terms');
      return;
    }
    if (passwordController.text != confirmPasswordController.text) {
      showCustomSnackbar('Error', 'Passwords do not match');
      return;
    }
    Get.offAndToNamed(kSelectAvatarScreenRoute);
  }

  void login() {
    if (loginEmailController.text.isEmpty ||
        loginPasswordController.text.isEmpty) {
      showCustomSnackbar('Error', 'All fields must be filled');
      return;
    }

    showCustomSnackbar('Success', 'Login successfully',
        backgroundColor: Colors.green);
  }

  void forgotPassword() {
    if (forgotPassEmailController.text.isEmpty) {
      showCustomSnackbar('Error', 'Email cannot be empty');
      return;
    }

    Get.toNamed(kVerifyOtpScreenRoute);
  }

  void verifyOtp() {
    if (code.value.length != 4) {
      showCustomSnackbar('Error', 'Enter a valid 4 digit otp code');
      return;
    }

    Get.toNamed(kNewPasswordScreenRoute);
  }

  void newPassword() {
    if (newPasswordController.text.isEmpty ||
        newConfirmPasswordController.text.isEmpty) {
      showCustomSnackbar('Error', 'All fields must be filled');
      return;
    }

    if (newPasswordController.text != newConfirmPasswordController.text) {
      showCustomSnackbar('Error', 'Passwords do not match');
      return;
    }
    Get.back();
    Get.back();
    showCustomSnackbar('Success', 'Password reset successfully',
        backgroundColor: Colors.green);
  }
}
