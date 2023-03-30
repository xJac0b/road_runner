import 'package:flutter/material.dart';
import 'package:road_runner/presentation/core/widgets/authentication/custom_text_form_field.dart';

import '../../../../utils/extensions.dart';

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: context.l10n.authUsername,
      keyboardType: TextInputType.name,
      prefixIcon: const Icon(Icons.person),
    );
  }
}
