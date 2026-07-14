import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/constants/project_data.dart';
import 'package:sohelrana_portfolio/sections/projects/widget/project_card.dart';
import '../../app/scroll_sections.dart';
import '../../widgets/responsive_container.dart';
import '../../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.projectsKey,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ResponsiveContainer(
        child: Column(
          children: [
            const SectionTitle(
              title: "Featured Projects",
              subtitle: "Portfolio",
            ),

            const SizedBox(height: 80),

            ...List.generate(
              ProjectData.projects.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: ProjectCard(
                  project: ProjectData.projects[index],
                  reverse: index.isOdd,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
