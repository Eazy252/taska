import 'package:flutter/material.dart';
import 'package:taska/utilities/colors.dart';
import 'package:taska/utilities/device_size.dart';
import 'package:taska/utilities/spacer.dart';
import 'package:taska/utilities/strings.dart';
import 'package:taska/views/forgot_password_view/forgot_passwrod.dart';
import 'package:taska/views/home/home.dart';
import 'package:taska/widgets/text_widgets.dart';

import '../../widgets/input_text_field.dart';
import '../../widgets/materialButton.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static String loginScreenRoute = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    Size size = getDeviceSize(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddverticalSpace(height: size.height * 0.2),
              const LargeHeader(text: LoginScreen.welcome),
              const AddverticalSpace(height: 20.0),
              const MediumGrayText(text: LoginScreen.signIn),
              const AddverticalSpace(height: 20.0),
              const MediumSizedText(text: LoginScreen.username),
              const AddverticalSpace(height: 10.0),
              ReusableInputField(autofocus: true),
              const AddverticalSpace(height: 10.0),
              const MediumGrayText(text: LoginScreen.login),
              ReusableInputField(),
              const AddverticalSpace(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, Forgotpassword.forgotScreenRoute);
                },
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: MediumGrayText(text: LoginScreen.forgotPassword),
                ),
              ),
              const AddverticalSpace(height: 20.0),
              MaterialBtton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  HomeScreen.homeScreenRoute,
                ),
                text: LoginScreen.login,
              ),
              const AddverticalSpace(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
