import 'package:flutter/material.dart';
import 'package:road_runner/presentation/pages/register_page/widgets/sign_up_form.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Register Page'),
          SignUpForm(),
        ],
      )),
    );
  }
}
