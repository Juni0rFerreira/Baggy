import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';
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
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.email_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Email Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  InputText(
                    obscure: false,
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
