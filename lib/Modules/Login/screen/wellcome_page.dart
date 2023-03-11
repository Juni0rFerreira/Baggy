// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';
import 'package:mercado/Modules/Login/screen/create_account.dart';
import 'package:mercado/Modules/Login/screen/login_page.dart';

class WellcomePage extends GetView<WellcomePageController> {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WellcomePageController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 400,
                child: Image.asset(
                  'assets/images/imagewellcomepage.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 62.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    "Start shopping for groceries online",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: null, // DEFINIR
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1F20),
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1DB04F),
                    borderRadius: BorderRadius.all(
                      Radius.circular(56),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      onPressed: () {
                        Get.to(const CreateAccount());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'CREATE FREE ACCOUNT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Center(
                child: Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: null, // DEFINIR
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF1E1F20),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.green,
                      disabledForegroundColor: Colors.green.withOpacity(0.38),
                      textStyle: const TextStyle(
                          decoration: TextDecoration.underline)),
                  onPressed: () {
                    Get.to(
                      const LoginPage(),
                    );
                  },
                  child: const Text('Click here to sign in'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
