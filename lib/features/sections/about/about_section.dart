import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/features/sections/about/widget/about_card_widget.dart';
import 'package:sohelrana_portfolio/features/sections/about/widget/about_image_widget.dart';

import '../../../app/scroll_sections.dart';
import '../../../common_widgets/responsive_container.dart';
import '../../../common_widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.aboutKey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: ResponsiveContainer(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                const SectionTitle(title: "About Me", subtitle: "Who I Am"),

                const SizedBox(height: 70),

                constraints.maxWidth >= 900
                    ? const _DesktopAbout()
                    : const _MobileAbout(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _DesktopAbout extends StatelessWidget {
  const _DesktopAbout();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(flex: 4, child: AboutImage()),
        SizedBox(width: 60),
        Expanded(flex: 6, child: AboutContent()),
      ],
    );
  }
}

class _MobileAbout extends StatelessWidget {
  const _MobileAbout();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AboutImage(), SizedBox(height: 40), AboutContent()],
    );
  }
}
