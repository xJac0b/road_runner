import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.keyboardType,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon});
  final TextInputType keyboardType;
  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
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

