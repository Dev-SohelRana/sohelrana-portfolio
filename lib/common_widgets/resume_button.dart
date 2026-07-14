import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/assets_helper/app_colors.dart';
import 'package:sohelrana_portfolio/common_widgets/hover_scale.dart';

class ResumeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ResumeButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return HoverScale(
      child: FilledButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.download, size: 18),
        label: const Text("Resume"),
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(140, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
