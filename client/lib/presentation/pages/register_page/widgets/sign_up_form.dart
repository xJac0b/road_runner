import 'package:flutter/material.dart';
import 'package:road_runner/presentation/core/widgets/authentication/form_submit_buton.dart';
import 'package:road_runner/presentation/core/widgets/authentication/switch_form_buttons.dart';
import 'package:road_runner/presentation/router/router.dart';
import '../../../../utils/extensions.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/widgets/authentication/form_fields.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: EmailFormField(),
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
          child: FormSubmitButton(buttonText: context.l10n.authSignUp),
        ),
        SwitchFormButton(
          leadingText: context.l10n.authHaveAccount,
          buttonText: context.l10n.authSignIn,
          route: const LoginRoute(),
        )
      ]),
    );
  }
}
