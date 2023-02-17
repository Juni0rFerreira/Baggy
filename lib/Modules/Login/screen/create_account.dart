import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';

class CreateAccount extends GetView<CreateAccountController> {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(builder: (_) {
      return const Scaffold();
    });
  }
}
