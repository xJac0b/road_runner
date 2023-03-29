import 'package:flutter/material.dart';
import 'package:road_runner/presentation/core/constants/colors.dart';

import 'widgets/sign_in_form.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login Page'),
          SignInForm(),
        ],
      )),
    );
  }
}
