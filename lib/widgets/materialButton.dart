import 'package:flutter/material.dart';
import 'package:taska/utilities/colors.dart';
import 'package:taska/widgets/text_widgets.dart';

class MaterialBtton extends StatelessWidget {
  const MaterialBtton({
    Key? key,
    required this.text, this.onPressed,
  }) : super(key: key);

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48.0,
      color: primaryColor,
      minWidth: double.infinity,
      onPressed: onPressed,
      splashColor: tertiaryColor,
      child: SmallWhiteText(text: text),
    );
  }
}
