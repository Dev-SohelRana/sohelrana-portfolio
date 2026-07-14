import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/assets_helper/app_image.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(AppImages.profileImage, fit: BoxFit.cover),
      ),
    );
  }
}
