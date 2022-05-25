import 'package:flutter/material.dart';

/// [Text] widget which uses the [TextTheme.bodySmall] style.
///
/// For more info refer to API doc: https://api.flutter.dev/flutter/material/TextTheme/bodySmall.html
class BodySmallText extends StatelessWidget {
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

  /// The value given to the underlying [TextStyle.fontFamily].
  final String? fontFamily;

  /// The value given to the underlying [TextStyle.fontFamilyFallback].
  final List<String>? fontFamilyFallback;

  const BodySmallText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.fontFamily,
    this.fontFamilyFallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        style: _style(context).copyWith(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
        ),
      );

  TextStyle _style(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall ?? const TextStyle();
}

extension BodySmallExtension on String {
  /// Build a [BodySmallText] widget from the current string.
  Widget bodySmall({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    TextAlign? textAlign,
    String? fontFamily,
    List<String>? fontFamilyFallback,
  }) =>
      BodySmallText(
        text: this,
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        textAlign: textAlign,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
      );
}
