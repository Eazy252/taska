import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class ReusableInputField extends StatelessWidget {
   ReusableInputField({
    Key? key,
    this.autofocus =false,

  }) : super(key: key);
  bool autofocus ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      cursorColor: primaryColor,
      decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      )),
    );
  }
}
