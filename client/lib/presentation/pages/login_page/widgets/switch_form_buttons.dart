import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../core/constants/colors.dart';

class SwitchFormButton extends StatelessWidget {
  const SwitchFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: context.l10n.authNoAccount,
        style: const TextStyle(color: Colors.black),
      ),
      TextSpan(
          text: context.l10n.authSignUp,
          style: const TextStyle(color: secondary),
          recognizer: TapGestureRecognizer()..onTap = () {})
    ]));
  }
}
