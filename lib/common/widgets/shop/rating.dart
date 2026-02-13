
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppRating extends StatelessWidget {
  const AppRating({
    super.key,
    required this.reating,
  });

  final String reating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icon/svg/star.svg",),
        SizedBox(width: 5),
        Text(reating, style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
