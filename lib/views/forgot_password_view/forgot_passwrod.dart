import 'package:flutter/material.dart';
import 'package:taska/utilities/appbar.dart';
import 'package:taska/utilities/colors.dart';
import 'package:taska/utilities/device_size.dart';
import 'package:taska/utilities/spacer.dart';
import 'package:taska/utilities/strings.dart';
import 'package:taska/widgets/input_text_field.dart';
import 'package:taska/widgets/text_widgets.dart';

import '../../widgets/materialButton.dart';
import '../reset_password_view/reset_password.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({Key? key}) : super(key: key);
  static String forgotScreenRoute = 'forgotScreen';

  @override
  Widget build(BuildContext context) {
    Size size = getDeviceSize(context);
    return Scaffold(
        backgroundColor: whiteTextColor,
        appBar: getAppbar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddverticalSpace(height: size.height * 0.1),
                const LargeHeader(
                  text: LoginScreen.forgotPassword,
                ),
                const AddverticalSpace(
                  height: 10.0,
                ),
                const MediumSizedText(text: ForgotPassword.please),
                const AddverticalSpace(
                  height: 30.0,
                ),
                const MediumSizedText(text: ForgotPassword.username),
                const AddverticalSpace(height: 10.0),
                ReusableInputField(autofocus: true),
                const AddverticalSpace(height: 10.0),
                MaterialBtton(
                  onPressed: () {
                    Navigator.pushNamed(context,  ResetPassword.resetPasswordScreenRoute,
                    );
                  },
                  text: ForgotPassword.send,
                )
              ],
            ),
          ),
        ));
  }
}
