import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import 'custom_text_form_field.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    this.forgotPassword = false,
  });
  final bool forgotPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTextFormField(
            hintText: context.l10n.authPassword,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: const Icon(Icons.visibility)),
        if (forgotPassword)
          TextButton(
              onPressed: () {},
              child: Text(
                context.l10n.authForgotPassword,
              ))
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('forgotPassword', forgotPassword));
  }
}
