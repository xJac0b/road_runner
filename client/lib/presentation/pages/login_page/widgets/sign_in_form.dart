import 'package:flutter/material.dart';
import '../../../../utils/extensions.dart';
import '../../../core/widgets/authentication/form_fields.dart';
import 'switch_form_buttons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        const UsernameFormField(),
        const PasswordFormField(),
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(context.l10n.authSignIn),
        ),
        SwitchFormButton()
      ]),
    );
  }
}
