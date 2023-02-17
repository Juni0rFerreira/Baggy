import 'package:flutter/material.dart';

class ContainerCustomLogin extends StatelessWidget {
  const ContainerCustomLogin({Key? key, required this.buttonLogin})
      : super(key: key);
  final Widget buttonLogin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(56),
          )),
      child: SizedBox.expand(
        child: buttonLogin,
      ),
    );
  }
}
