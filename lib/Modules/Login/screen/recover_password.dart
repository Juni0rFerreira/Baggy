// ignore_for_file: unused_import

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';
import 'package:mercado/Modules/Login/screen/login_page.dart';
import 'package:mercado/Modules/Login/widgets/input_text.dart';

class RecoverPassword extends GetView<RecoverPasswordController> {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecoverPasswordController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.email_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Email Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  InputText(
                    controllerText: controller.text,
                    textInputFormatter: null,
                    hintText: '',
                    textInputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 20,
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
                          Get.to(const LoginPage());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'TO SEND',
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
