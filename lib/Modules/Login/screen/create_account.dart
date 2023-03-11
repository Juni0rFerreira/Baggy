// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/create_account_controller.dart';
import 'package:mercado/Modules/Login/screen/login_page.dart';
import 'package:mercado/Modules/Login/screen/recover_password.dart';
import 'package:mercado/Modules/Login/widgets/input_text.dart';
import 'package:brasil_fields/brasil_fields.dart';

class CreateAccount extends GetView<CreateAccountController> {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAccountController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              ' ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: null,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ),
          bottomSheet: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: ListView(
                children: <Widget>[
                  const Center(
                    child: SizedBox(
                      width: 128,
                      height: 45,
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    width: 40,
                  ),
                  const Text("E-mail address"),
                  const SizedBox(
                    height: 8,
                  ),
                  InputText(
                    controllerText: controller.text,
                    textInputFormatter: null,
                    hintText: '',
                    textInputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text("Password"),
                  const SizedBox(
                    height: 8,
                  ),
                  InputText(
                    function: () {
                      controller.changeShowPassword();
                    },
                    isPassword: true,
                    hintText: " ",
                    controllerText: controller.textPassword,
                    textInputType: TextInputType.text,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Get.to(
                          const RecoverPassword(),
                        );
                      },
                      child: const Text(
                          'Use 8 or more characters with a mix of letters, numbers & symbols.'),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text("Confirm password"),
                  const SizedBox(
                    height: 8,
                  ),
                  InputText(
                    function: () {
                      controller.changeShowPassword();
                    },
                    isPassword: true,
                    hintText: " ",
                    controllerText: controller.textPassword,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 97,
                  ),
                  Container(
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
                          Get.to(
                            const LoginPage(),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'CREATE ACCOUNT',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 200,
                      horizontal: 0,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
