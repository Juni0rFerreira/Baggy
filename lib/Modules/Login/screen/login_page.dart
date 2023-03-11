// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';
import 'package:mercado/Modules/Login/screen/create_account.dart';
import 'package:mercado/Modules/Login/screen/home_page.dart';
import 'package:mercado/Modules/Login/screen/recover_password.dart';
import 'package:mercado/Modules/Login/widgets/button_continue_login.dart';
import 'package:mercado/Modules/Login/widgets/container_custom_login.dart';
import 'package:mercado/Modules/Login/widgets/input_text.dart';
import 'package:brasil_fields/brasil_fields.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginPageController>(
      builder: (_) {
        return Scaffold(
          bottomSheet: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
              child: ListView(
                children: <Widget>[
                  const Center(
                    child: SizedBox(
                      width: 128,
                      height: 128,
                    ),
                  ),
                  const Center(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text("Sing In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 32,
                              )))),
                  const SizedBox(
                    height: 40,
                    width: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text("E-mail address"),
                  ),
                  InputText(
                    controllerText: controller.text,
                    textInputFormatter: null,
                    hintText: '',
                    textInputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Text("Password"),
                  ),
                  InputText(
                    function: () {
                      controller.changeShowPassword();
                    },
                    isPassword: true,
                    hintText: "*********",
                    controllerText: controller.textPassword,
                    textInputType: TextInputType.text,
                  ),
                  Container(
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.green,
                            disabledForegroundColor:
                                Colors.green.withOpacity(0.38)),
                        onPressed: () {
                          Get.to(const RecoverPassword());
                        },
                        child: const Text('Forgot Password?'),
                      )),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        color: Color(0xFF1DB04F),
                        borderRadius: BorderRadius.all(
                          Radius.circular(56),
                        )),
                    child: SizedBox.expand(
                      child: TextButton(
                        onPressed: () {
                          Get.to(const HomePage());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'LOG IN',
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
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  ContainerCustomLogin(
                      buttonLogin: ButtonContinueLogin(
                    image: 'facebook_icon.png',
                    text: "Continue with Facebook",
                    function: () {},
                  )),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  ContainerCustomLogin(
                    buttonLogin: ButtonContinueLogin(
                      image: 'google_icon.png',
                      text: "Continue with Google",
                      function: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 200, horizontal: 0),
                    child: Container(
                        color: Colors.transparent,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Can’t sign in?'),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: const Color(0xFF1DB04F),
                                      disabledForegroundColor:
                                          Colors.green.withOpacity(0.38)),
                                  onPressed: () {
                                    Get.to(const CreateAccount());
                                  },
                                  child: const Text('Create free account'))
                            ])),
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
