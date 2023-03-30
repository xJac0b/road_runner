import 'package:flutter/material.dart';
import 'package:road_runner/presentation/core/widgets/authentication/page_title.dart';

import '../../../utils/extensions.dart';
import 'widgets/sign_in_form.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PageTitle(title: context.l10n.authLoginHeading),
          const SizedBox(height: 20),
          const SignInForm(),
        ],
      )),
    );
  }
}
