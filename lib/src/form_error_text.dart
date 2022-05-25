import 'package:flutter/material.dart';

/// [Text] widget which should be used when building a custom [FormField].
class FormErrorText extends StatelessWidget {
  /// The text displayed by the widget.
  final String text;

  const FormErrorText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(color: Theme.of(context).errorColor, fontSize: 12),
      );
}

extension FormErrorExtension on String {
  /// Build a [FormErrorText] widget from the current string.
  Widget formErrorText() => FormErrorText(text: this);
}
