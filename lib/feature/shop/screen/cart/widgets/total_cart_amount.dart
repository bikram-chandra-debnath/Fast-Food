import 'package:fast_food/utlis/constrant/app_text.dart';
import 'package:flutter/material.dart';

class TotalCartAmount extends StatelessWidget {
  const TotalCartAmount({super.key, this.amount = "0"});
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppText.totalCapital,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text("\$$amount", style: Theme.of(context).textTheme.displaySmall),
      ],
    );
  }
}
