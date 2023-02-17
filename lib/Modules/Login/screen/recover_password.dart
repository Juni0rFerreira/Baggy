import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';

class RecoverPassword extends GetView<RecoverPasswordController> {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecoverPasswordController>(builder: (_) {
      return const Scaffold();
    });
  }
}
