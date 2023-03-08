// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Modules/Themes/color_theme_global.dart';

class LoginPageController extends GetxController {
  final colorTheme = ColorThemeController();
  final textCpf = TextEditingController();
  late TextEditingController textPassword;

  bool showPassword = false;

  @override
  void onInit() {
    textPassword = TextEditingController();
    super.onInit();
  }

  changeShowPassword() {
    if (showPassword) {
      showPassword = false;
    } else {
      showPassword = true;
    }
    update();
  }
}

class CreateAccountController extends GetxController {
  final colorTheme = ColorThemeController();
  final textCpf = TextEditingController();
  late TextEditingController textPassword;

  bool showPassword = false;

  @override
  void onInit() {
    textPassword = TextEditingController();
    super.onInit();
  }

  changeShowPassword() {
    if (showPassword) {
      showPassword = false;
    } else {
      showPassword = true;
    }
    update();
  }
}

class HomePageController extends GetxController {}

class WellcomePageController extends GetxController {}

class RecoverPasswordController extends GetxController {}
