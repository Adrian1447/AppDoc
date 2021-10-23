import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Principal/components/medic_banner.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MedicBanner()
    );
  }

}