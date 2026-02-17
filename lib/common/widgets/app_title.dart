
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key, required this.title,  this.textAlign=TextAlign.left, required this.style, this.maxLines,
  });

  final String title;
  final TextAlign textAlign;
  final TextStyle style;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      overflow: TextOverflow.fade,
      title,
      style: style,
      textAlign: textAlign,
    );
  }
}