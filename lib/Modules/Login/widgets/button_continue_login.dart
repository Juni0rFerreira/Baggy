import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonContinueLogin extends StatelessWidget {
  const ButtonContinueLogin(
      {Key? key,
      required this.text,
      required this.function,
      required this.image})
      : super(key: key);
  final String text, image;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: HexColor('BABABA'),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/$image'),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
