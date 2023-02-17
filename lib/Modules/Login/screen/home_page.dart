import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (_) {
        return const Scaffold();
      },
    );
  }
}
