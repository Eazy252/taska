import 'package:flutter/material.dart';
import 'package:taska/utilities/colors.dart';

class SucessfullScreen extends StatelessWidget {
  const SucessfullScreen({Key? key}) : super(key: key);
  static String sucessfullScreenRoute = 'sucessfullScreenRoute';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteTextColor,
        child: Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
