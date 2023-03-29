import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class SwitchFormButton extends StatelessWidget {
  const SwitchFormButton({
    Key? key,
    required this.buttonText,
    required this.leadingText,
    required this.route,
  }) : super(key: key);
  final String leadingText, buttonText;
  final PageRouteInfo route;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: context.l10n.authNoAccount,
        style: TextStyle(color: context.colors.secondary),
      ),
      TextSpan(
          text: ' ${context.l10n.authSignUp}',
          style: TextStyle(color: context.colors.primary),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.router.replace(route);
            })
    ]));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('buttonText', buttonText))
      ..add(StringProperty('leadingText', leadingText))
      ..add(DiagnosticsProperty<PageRouteInfo>('route', route));
  }
}
