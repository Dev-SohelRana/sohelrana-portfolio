import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/app/scroll_sections.dart';
import 'package:sohelrana_portfolio/sections/hero_section/hero_section.dart';
import '../app/home_controller.dart';
import '../sections/about/about_section.dart';
import '../sections/contact/contact_section.dart';
import '../sections/experience/experience_section.dart';
import '../sections/footer/footer_section.dart';
import '../sections/navbar/navbar_section.dart';
import '../sections/projects/projects_section.dart';
import '../sections/skills/skills_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    controller.onScroll = _handleScroll;
  }

  void _handleScroll() {
    final sections = [
      ScrollSections.aboutKey,
      ScrollSections.skillsKey,
      ScrollSections.projectsKey,
      ScrollSections.experienceKey,
      ScrollSections.contactKey,
    ];

    for (int i = 0; i < sections.length; i++) {
      final context = sections[i].currentContext;

      if (context == null) continue;

      final box = context.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero);

      if (position.dy <= 180 && position.dy >= -250) {
        if (selectedIndex != i) {
          setState(() {
            selectedIndex = i;
          });
        }
        break;
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const Text(
                "Menu",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              ListTile(
                title: const Text("About"),
                onTap: () {
                  Navigator.pop(context);
                  controller.scrollTo(ScrollSections.aboutKey);
                },
              ),

              ListTile(
                title: const Text("Skills"),
                onTap: () {
                  Navigator.pop(context);
                  controller.scrollTo(ScrollSections.skillsKey);
                },
              ),

              ListTile(
                title: const Text("Projects"),
                onTap: () {
                  Navigator.pop(context);
                  controller.scrollTo(ScrollSections.projectsKey);
                },
              ),

              ListTile(
                title: const Text("Experience"),
                onTap: () {
                  Navigator.pop(context);
                  controller.scrollTo(ScrollSections.experienceKey);
                },
              ),

              ListTile(
                title: const Text("Contact"),
                onTap: () {
                  Navigator.pop(context);
                  controller.scrollTo(ScrollSections.contactKey);
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller.scrollController,

            // child: Column(
            //   children: [
            //     const HeroSection(),

            //     Container(
            //       key: ScrollSections.aboutKey,
            //       child: const AboutSection(),
            //     ),

            //     Container(
            //       key: ScrollSections.skillsKey,
            //       child: const SkillsSection(),
            //     ),

            //     Container(
            //       key: ScrollSections.projectsKey,
            //       child: const ProjectsSection(),
            //     ),

            //     Container(
            //       key: ScrollSections.experienceKey,
            //       child: const ExperienceSection(),
            //     ),

            //     Container(
            //       key: ScrollSections.contactKey,
            //       child: const ContactSection(),
            //     ),

            //     const FooterSection(),
            //   ],
            // ),
            child: Column(
              children: [
                HeroSection(controller: controller),
                const AboutSection(),
                const SkillsSection(),
                const ProjectsSection(),
                const ExperienceSection(),
                const ContactSection(),
                const FooterSection(),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavbarSection(
              controller: controller,
              selectedIndex: selectedIndex,
            ),
          ),
        ],
      ),
    );
  }
}
