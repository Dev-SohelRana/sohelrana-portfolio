import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/responsive/responsive.dart';

import '../../app/home_controller.dart';
import '../navbar/desktop_navbar.dart';
import '../navbar/mobile_navbar.dart';

class NavbarSection extends StatelessWidget {
  final int selectedIndex;
  final HomeController controller;

  const NavbarSection({
    super.key,
    required this.controller,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          constraints: const BoxConstraints(maxWidth: 1280),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                height: 72,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black12),
                ),
                child: Responsive.isDesktop(context)
                    ? DesktopNavbar(controller: controller)
                    : MobileNavbar(controller: controller),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
