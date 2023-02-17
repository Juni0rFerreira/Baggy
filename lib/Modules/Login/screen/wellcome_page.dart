import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';

class WellcomePage extends GetView<WellcomePageController> {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WellcomePageController>(
      builder: (_) {
        return Container(
          color: Colors.transparent,
          child: Center(
            child: Image.asset(
              "assets/images/imagemhome.png",
            ),
          ),
        );
      },
    );
  }
}
