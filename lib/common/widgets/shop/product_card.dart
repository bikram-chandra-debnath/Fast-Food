
import 'package:fast_food/common/paint/custom_container_paint.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    this.child, 
    this.subTitle ,
  });

  final String? image;
  final String title;
  final String? subTitle;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 182,
      width: 160,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: CustomPaint(
              size: const Size(160, 144),
              painter: CustomContainerPaint(),
            ),
          ),
          Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: Container(
              height: 114,
              width: 122,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF96969A).withValues(alpha: 0.05),
                    offset: const Offset(12.0, 12.0),
                    blurRadius: 30.0,
                  ),
                ],
              ),
              child: image == null
                  ? const SizedBox()
                  : Image.asset(image!, fit: BoxFit.contain),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subTitle??"",
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),

              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: child?? SizedBox(),
          ),
        ],
      ),
    );
  }
}