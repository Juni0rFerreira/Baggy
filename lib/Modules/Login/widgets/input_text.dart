import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mercado/Controllers/login_controller.dart';

class InputText extends GetView<LoginPageController> {
  final String hintText;
  final TextEditingController? controllerText;
  final TextInputType textInputType;
  final TextInputFormatter? textInputFormatter;
  final bool isPassword;
  final Function()? function;
  const InputText(
      {Key? key,
      required this.hintText,
      required this.controllerText,
      required this.textInputType,
      required this.isPassword,
      this.textInputFormatter,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginPageController>(
      builder: (_) {
        return textInputFormatter == null
            ? TextFormField(
                keyboardType: textInputType,
                controller: null,
                decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: const Color(0xFFD9D9D9),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  suffixIcon: isPassword
                      ? GestureDetector(
                          onTap: function,
                          child: Icon(
                              controller.showPassword == false
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.black),
                        )
                      : const SizedBox.shrink(),
                ),
                obscureText: isPassword ? controller.showPassword : false,
              )
            : TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  textInputFormatter!
                ],
                keyboardType: textInputType,
                controller: controllerText,
                decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: const Color(0xFFD9D9D9),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: isPassword
                      ? GestureDetector(
                          onTap: function,
                          child: Icon(
                            controller.showPassword == false
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.black,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                obscureText: isPassword ? controller.showPassword : false,
              );
      },
    );
  }
}
