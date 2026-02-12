
import 'package:fast_food/common/paint/custom_container_paint.dart';
import 'package:fast_food/utlis/constrant/app_size.dart';
import 'package:flutter/material.dart';

class AppCategoriesCard extends StatelessWidget {
  const AppCategoriesCard({
    super.key,
    required this.title,
    required this.price,
    this.image,
  });

  final String title, price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 182,
          width: 147,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: CustomPaint(
                  size: const Size(147, 144),
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
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Starting",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text(price, style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: AppSizes.spaceBtwSections,)
      ],
    );
  }
}