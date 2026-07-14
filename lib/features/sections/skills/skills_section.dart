import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/constants/skill_data.dart';
import '../../../app/scroll_sections.dart';
import '../../../common_widgets/responsive_container.dart';
import '../../../common_widgets/section_title.dart';
import '../../../common_widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.skillsKey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: ResponsiveContainer(
        child: Column(
          children: [
            const SectionTitle(title: "My Skills", subtitle: "What I Use"),

            const SizedBox(height: 60),

            LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 3;

                if (constraints.maxWidth < 650) {
                  crossAxisCount = 1;
                } else if (constraints.maxWidth < 1000) {
                  crossAxisCount = 2;
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: SkillData.items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: 1.15,
                  ),
                  itemBuilder: (context, index) {
                    return SkillCard(skill: SkillData.items[index]);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
