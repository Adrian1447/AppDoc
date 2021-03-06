import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/Screens/SignUp/signup_screen.dart';
import 'package:flutter_application_1/Screens/Welcome/components/background.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BIENVENIDO A APPDOC",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/1040248.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: KPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

