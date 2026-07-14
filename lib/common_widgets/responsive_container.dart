import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/responsive/responsive.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;

  const ResponsiveContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1280),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isDesktop(context)
                ? 40
                : Responsive.isTablet(context)
                ? 32
                : 20,
          ),
          child: child,
        ),
      ),
    );
  }
}
