import 'package:flutter/material.dart';

import '../config/app_theme.dart';

class KText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextOverflow textOverflow;
  final int? maxLines;
  final bool? bold;

  KText({
    required this.text,
    this.color,
    this.bold = false,
    this.fontSize,
    this.textAlign,
    this.maxLines,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textScaleFactor: 1.0,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: fontSize != null ? fontSize! : 14,
        fontFamily: bold! ? 'Manrope Bold' : 'Manrope Regular',
        color: color != null ? color : AppTheme.textColor,
      ),
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign != null ? textAlign : TextAlign.start,
    );
  }
}
