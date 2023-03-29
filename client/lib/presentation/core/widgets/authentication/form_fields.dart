import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class FormField extends StatelessWidget {
  const FormField(
      {super.key,
      required this.keyboardType,
      required this.hintText,
      this.prefixIcon});
  final TextInputType keyboardType;
  final String hintText;
  final Icon? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          )),
      keyboardType: keyboardType,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('hintText', hintText))
      ..add(DiagnosticsProperty<TextInputType>('keyboardType', keyboardType));
  }
}

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormField(
        prefixIcon: const Icon(Icons.email),
        hintText: context.l10n.authEmail,
        keyboardType: TextInputType.emailAddress);
  }
}

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
        FormField(
            hintText: context.l10n.authPassword,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock)),
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

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return FormField(
      hintText: context.l10n.authUsername,
      keyboardType: TextInputType.name,
      prefixIcon: const Icon(Icons.person),
    );
  }
}
