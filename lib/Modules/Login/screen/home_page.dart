import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';
import 'package:mercado/Modules/Login/screen/login_page.dart';
import 'package:mercado/Modules/Login/widgets/input_text.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    "How would you like to be called?",
                    style: TextStyle(
                      fontFamily: null, // DEFINIR
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1F20),
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text(
                        "You can change this later in Profile",
                        style: TextStyle(
                          fontFamily: null, // DEFINIR
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InputText(
                    controllerText: controller.text,
                    textInputFormatter: null,
                    hintText: '',
                    textInputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  const SizedBox(
                    height: 16,
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
                              'CONTINUE',
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
