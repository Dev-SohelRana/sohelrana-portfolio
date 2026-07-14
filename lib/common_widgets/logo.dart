import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/assets_helper/app_colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sohel Rana",
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.primaryColor,
      ),
    );
  }
}
