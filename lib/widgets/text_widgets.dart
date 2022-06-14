import 'package:flutter/material.dart';
import 'package:taska/utilities/colors.dart';
import 'package:taska/utilities/doubles.dart';

class LargeHeader extends StatelessWidget {
  const LargeHeader({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: TextSize.largeHeaderText, color: defaultTextColor),
    );
  }
}

class MediumGrayText extends StatelessWidget {
  const MediumGrayText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: defaultTextColor, fontSize: TextSize.mediumSizedText),
    );
  }
}

class MediumSizedText extends StatelessWidget {
  const MediumSizedText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: defaultTextColor, fontSize: TextSize.mediumSizedText),
    );
  }
}
class SmallWhiteText extends StatelessWidget {
  const SmallWhiteText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: whiteTextColor, fontSize: TextSize.mediumSizedText),
    );
  }
}
