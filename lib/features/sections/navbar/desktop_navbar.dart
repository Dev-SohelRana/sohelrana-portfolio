import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/features/sections/navbar/widget/nav_item.dart';
import 'package:sohelrana_portfolio/services/resume_service.dart';

import '../../../app/home_controller.dart';
import '../../../app/scroll_sections.dart';
import '../../../common_widgets/logo.dart';
import '../../../common_widgets/resume_button.dart';

class DesktopNavbar extends StatelessWidget {
  final HomeController controller;

  const DesktopNavbar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Logo(),

        const Spacer(),

        NavItem(
          title: "About",
          onTap: () => controller.scrollTo(ScrollSections.aboutKey),
        ),

        const SizedBox(width: 28),

        NavItem(
          title: "Skills",
          onTap: () => controller.scrollTo(ScrollSections.skillsKey),
        ),

        const SizedBox(width: 28),

        NavItem(
          title: "Projects",
          onTap: () => controller.scrollTo(ScrollSections.projectsKey),
        ),

        const SizedBox(width: 28),

        NavItem(
          title: "Experience",
          onTap: () => controller.scrollTo(ScrollSections.experienceKey),
        ),

        const SizedBox(width: 28),

        NavItem(
          title: "Contact",
          onTap: () => controller.scrollTo(ScrollSections.contactKey),
        ),

        const SizedBox(width: 40),

        ResumeButton(
          onPressed: () {
            ResumeService.downloadResume();
          },
        ),
      ],
    );
  }
}
