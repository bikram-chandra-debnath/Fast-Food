
import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double radius = 24.0;
    const double topWidth = 137.0;
    final double inset = (size.width - topWidth) / 2; // 5.0px

    final path =
        Path()
          ..moveTo(inset + radius, 0)
          ..lineTo(size.width - inset - radius, 0)
          ..quadraticBezierTo(
            size.width - inset,
            0,
            size.width - inset * 0.5,
            radius * 0.5,
          ) // Top Right
          ..lineTo(size.width, size.height - radius)
          ..quadraticBezierTo(
            size.width,
            size.height,
            size.width - radius,
            size.height,
          ) // Bottom Right
          ..lineTo(radius, size.height)
          ..quadraticBezierTo(
            0,
            size.height,
            0,
            size.height - radius,
          ) // Bottom Left
          ..lineTo(inset * 0.5, radius * 0.5)
          ..quadraticBezierTo(inset, 0, inset + radius, 0) // Top Left
          ..close();

    // 1. Draw Shadow
    final shadowPaint =
        Paint()
          ..color = AppColors.darkGrey.withValues(alpha: 0.15)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30);
    canvas.drawPath(path.shift(const Offset(12, 12)), shadowPaint);

    // 2. Draw Shape
    final paint = Paint()..color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
