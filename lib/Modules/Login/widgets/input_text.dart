import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final bool obscure;

  const InputText({Key? keys, required this.obscure}) : super(key: keys);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: 328,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(999)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: TextFormField(
            obscureText: (false),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                )),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
