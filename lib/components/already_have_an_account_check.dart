import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    this.login = true, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿No tiene una cuenta?" :  "¿Ya tiene una cuenta?",
          style: const TextStyle(color: KPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registrese" : "Login", 
            style: const TextStyle(
              color: KPrimaryColor, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

