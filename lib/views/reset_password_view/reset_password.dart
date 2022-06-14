import 'package:flutter/material.dart';
import 'package:taska/utilities/device_size.dart';
import 'package:taska/utilities/spacer.dart';
import 'package:taska/utilities/strings.dart';
import 'package:taska/views/login_view/login.dart';
import 'package:taska/widgets/text_widgets.dart';
import '../../widgets/input_text_field.dart';
import '../../widgets/materialButton.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  static String resetPasswordScreenRoute = 'ResetPasswordScreen';

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
              const LargeHeader(text: ResetPasswordScreen.resetPassword),
              const AddverticalSpace(height: 20.0),
              const MediumGrayText(text: ResetPasswordScreen.reset),
              const AddverticalSpace(height: 20.0),
              const MediumSizedText(text: ResetPasswordScreen.resetCode),
              const AddverticalSpace(height: 10.0),
              ReusableInputField(autofocus: true),
              const AddverticalSpace(height: 10.0),
              const MediumGrayText(text: ResetPasswordScreen.newPasword),
              ReusableInputField(),
              const AddverticalSpace(height: 20.0),
              const MediumGrayText(text: ResetPasswordScreen.confirmPassword),
              ReusableInputField(),
              const AddverticalSpace(height: 20.0),
              MaterialBtton(
                onPressed: () => Navigator.popUntil(
                    context, ModalRoute.withName(Login.loginScreenRoute)),
                text: ResetPasswordScreen.changePassword,
              ),
              const AddverticalSpace(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
