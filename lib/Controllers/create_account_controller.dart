import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Modules/Themes/color_theme_global.dart';

class CreateAccountController extends GetxController {
  final colorTheme = ColorThemeController();
  final textCpf = TextEditingController();
  final text = TextEditingController();
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
