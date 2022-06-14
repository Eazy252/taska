import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taska/views/forgot_password_view/forgot_passwrod.dart';
import 'package:taska/views/home/home.dart';
import 'package:taska/views/login_view/login.dart';
import 'package:taska/views/reset_password_view/reset_password.dart';
import 'package:taska/views/sucessfull_view/sucessfull.dart';

void main() => runApp(
  // const MyApp(),
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: Login.loginScreenRoute,
      routes: {
        
        Login.loginScreenRoute: (context) => const Login(),
         Forgotpassword.forgotScreenRoute: (context) => const Forgotpassword(),
         ResetPassword.resetPasswordScreenRoute: (context) => const ResetPassword(),
         SucessfullScreen.sucessfullScreenRoute: (context) =>
            const SucessfullScreen(),
       HomeScreen.homeScreenRoute : (context) =>
             HomeScreen(),
      },
      
    );
  }
}
