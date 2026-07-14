import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/constants/experience_data.dart';
import 'package:sohelrana_portfolio/sections/experience/widget/experience_card.dart';
import '../../app/scroll_sections.dart';
import '../../widgets/responsive_container.dart';
import '../../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.experienceKey,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ResponsiveContainer(
        child: Column(
          children: [
            const SectionTitle(title: "Experience", subtitle: "Career Journey"),

            const SizedBox(height: 80),

            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ExperienceData.items.length,
              separatorBuilder: (_, __) => const SizedBox(height: 50),
              itemBuilder: (_, index) {
                final item = ExperienceData.items[index];

                return ExperienceCard(
                  experience: item,
                  isLast: index == ExperienceData.items.length - 1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
