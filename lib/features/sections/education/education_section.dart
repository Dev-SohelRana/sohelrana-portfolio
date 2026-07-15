import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/app/scroll_sections.dart';
import 'package:sohelrana_portfolio/common_widgets/responsive_container.dart';
import 'package:sohelrana_portfolio/common_widgets/section_title.dart';
import 'education_card.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.educationKey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ResponsiveContainer(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(
              title: "Education",
              subtitle: "My academic background.",
            ),

            const SizedBox(height: 80),

            const EducationCard(
              degree: "B.Sc. in Computer Science & Engineering",
              institute: "Daffodil International University",
              duration: "January 2020 - February 2024",
              result: "CGPA: 3.53 / 4.00",
            ),

            const SizedBox(height: 30),

            const EducationCard(
              degree: "Higher Secondary Certificate",
              institute: "Dhaka City College",
              duration: "June 2016 - July 2018",
              result: "CGPA: 5.00 / 5.00",
            ),

            const SizedBox(height: 30),

            const EducationCard(
              degree: "Secondary School Certificate",
              institute: "Thakurgaon Govt. Boys' High School",
              duration: "January 2010 - May 2016",
              result: "CGPA: 5.00 / 5.00",
            ),
          ],
        ),
      ),
    );
  }
}
