import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../constants/colors.dart';

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
          fillColor: surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
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
        hintText: context.l10n.authEmail,
        keyboardType: TextInputType.emailAddress);
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormField(
            hintText: context.l10n.authPassword,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: const Icon(Icons.lock)),
        TextButton(
            onPressed: () {},
            child: Text(context.l10n.authForgotPassword,
                style: const TextStyle(color: secondary)))
      ],
    );
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
