import 'package:fast_food/utlis/constrant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainerPaint extends CustomPainter {
  final Color? fillColor;
  final Color? shadowColor;
  final double? topWidth;   
  CustomContainerPaint({
    this.fillColor,
    this.shadowColor,
    this.topWidth= 137 , 
  });

  @override
  void paint(Canvas canvas, Size size) {
    const double radius = 28.0;
    final double inset = (size.width - topWidth!) / 2;

    final path = Path()
      ..moveTo(inset + radius, 0)
      ..lineTo(size.width - inset - radius, 0)
      ..quadraticBezierTo(
          size.width - inset, 0, size.width - inset * 0.6, radius * 0.6)
      ..lineTo(size.width, size.height - radius)
      ..quadraticBezierTo(size.width, size.height, size.width - radius, size.height)
      ..lineTo(radius, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - radius)
      ..lineTo(inset * 0.6, radius * 0.6)
      ..quadraticBezierTo(inset, 0, inset + radius, 0)
      ..close();

    // 1. Draw Shadow using the dynamic shadowColor
    final shadowPaint = Paint()
      ..color = shadowColor ?? AppColors.darkGrey.withValues(alpha: 0.15)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30);
    canvas.drawPath(path.shift(const Offset(12, 12)), shadowPaint);

    // 2. Draw Shape using the dynamic fillColor
    final paint = Paint()..color = fillColor ?? AppColors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomContainerPaint oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.shadowColor != shadowColor ||
        oldDelegate.topWidth != topWidth; // 
  }
}