import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Peso/components/peso_banner.dart';

class PresionScreen extends StatelessWidget {
  const PresionScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PesoBanner()
    );
  }
}