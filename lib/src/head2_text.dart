import 'package:flutter/material.dart';

/// [Text] widget which uses the [TextTheme.headline2] style.
///
/// For more info refer to API doc: https://api.flutter.dev/flutter/material/TextTheme/headline2.html
class Head2Text extends StatelessWidget {
  /// The text displayed by the widget.
  final String text;

  /// The value given to the underlying [TextStyle.color].
  final Color? color;

  /// The value given to the underlying [TextStyle.fontWeight].
  final FontWeight? fontWeight;

  /// The value given to the underlying [TextStyle.fontSize].
  final double? fontSize;

  /// The value given to the underlying [Text.textAlign].
  final TextAlign? textAlign;

  const Head2Text({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        style: _style(context).copyWith(color: color, fontWeight: fontWeight, fontSize: fontSize),
      );

  TextStyle _style(BuildContext context) =>
      Theme.of(context).textTheme.headline2 ?? const TextStyle();
}

extension Head2Extension on String {
  /// Build a [Head2Text] widget from the current string.
  Widget head2Text({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    TextAlign? textAlign,
  }) =>
      Head2Text(
        text: this,
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        textAlign: textAlign,
      );
}
