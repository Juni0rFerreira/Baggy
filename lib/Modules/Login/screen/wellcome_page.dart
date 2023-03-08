// ignore_for_file: sized_box_for_whitespace

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
          color: Colors.white,
          child: Column(
            children: [
              Container(
                  height: 398,
                  width: 850,
                  child: Image.asset(
                    "assets/images/imagewellcomepage.png",
                    fit: BoxFit.cover,
                  )),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Start shopping for groceries online",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
