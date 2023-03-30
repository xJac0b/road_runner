import 'package:flutter/material.dart';
import 'package:road_runner/presentation/core/widgets/authentication/page_title.dart';
import 'package:road_runner/presentation/pages/register_page/widgets/sign_up_form.dart';

import '../../../utils/extensions.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PageTitle(title: context.l10n.authRegisterHeading),
          const SizedBox(height: 20),
          const SignUpForm(),
        ],
      )),
    );
  }
}
