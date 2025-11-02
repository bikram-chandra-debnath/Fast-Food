
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key, required this.title,  this.textAlign=TextAlign.left, required this.style,
  });

  final String title;
  final TextAlign textAlign;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.fade,
      title,
      style: style,
      textAlign: textAlign,
    );
  }
}