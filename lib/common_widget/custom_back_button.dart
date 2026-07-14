import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sohelrana_portfolio/assets_helper/app_icons.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
      ],
    );
  }
}
