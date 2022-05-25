import 'package:flutter/material.dart';

/// [Text] widget which uses the [TextTheme.headline4] style.
///
/// For more info refer to API doc: https://api.flutter.dev/flutter/material/TextTheme/headline4.html
class Head4Text extends StatelessWidget {
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

  const Head4Text({
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
      Theme.of(context).textTheme.headline4 ?? const TextStyle();
}

extension Head4Extension on String {
  /// Build a [Head4Text] widget from the current string.
  Widget head4Text({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    TextAlign? textAlign,
  }) =>
      Head4Text(
        text: this,
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        textAlign: textAlign,
      );
}
