import 'package:flutter/material.dart';
import '../../../../utils/extensions.dart';
import '../../../core/constants/dimensions.dart';
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
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: UsernameFormField(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: PasswordFormField(),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Text(context.l10n.authSignIn),
            ),
          ),
        ),
        SwitchFormButton(
          leadingText: context.l10n.authNoAccount,
          buttonText: context.l10n.authSignUp,
        )
      ]),
    );
  }
}
