import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/app/home_controller.dart';
import 'package:sohelrana_portfolio/assets_helper/app_image.dart';
import 'package:sohelrana_portfolio/services/resume_service.dart';
import 'package:sohelrana_portfolio/common_widgets/background_blur.dart';
import 'package:sohelrana_portfolio/common_widgets/custom_primary_button.dart';

import '../../../app/scroll_sections.dart';
import '../../../common_widgets/responsive_container.dart';

class HeroSection extends StatelessWidget {
  final HomeController controller;

  const HeroSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.heroKey,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 140, bottom: 100),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            const Positioned.fill(child: BackgroundBlur()),
            ResponsiveContainer(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return constraints.maxWidth >= 900
                      ? _DesktopHero(controller: controller)
                      : _MobileHero(controller: controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DesktopHero extends StatelessWidget {
  final HomeController controller;

  const _DesktopHero({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 6, child: HeroContent(controller: controller)),
        const SizedBox(width: 60),
        const Expanded(flex: 4, child: HeroImage()),
      ],
    );
  }
}

class _MobileHero extends StatelessWidget {
  final HomeController controller;

  const _MobileHero({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeroImage(),
        const SizedBox(height: 50),
        HeroContent(controller: controller),
      ],
    );
  }
}

class HeroContent extends StatelessWidget {
  final HomeController controller;

  const HeroContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("👋 Hello, I'm", style: Theme.of(context).textTheme.titleLarge),

        const SizedBox(height: 16),

        Text(
          "Sohel Rana",
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        Text(
          "Flutter Developer",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 30),

        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 550),
          child: Text(
            "I build beautiful, scalable and high-performance cross-platform applications using Flutter. I enjoy solving real-world problems through clean architecture and modern technologies.",
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(height: 1.7),
          ),
        ),

        const SizedBox(height: 40),

        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            PrimaryButton(
              text: "Download Resume",
              onPressed: () {
                ResumeService.downloadResume();
              },
            ),

            OutlinedButton(
              onPressed: () {
                controller.scrollTo(ScrollSections.contactKey);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                child: Text("Contact Me"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 380,
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary.withOpacity(.06),
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(AppImages.profileImage, fit: BoxFit.cover),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:sohelrana_portfolio/assets_helper/app_colors.dart';
// import 'package:sohelrana_portfolio/widgets/custom_primary_button.dart';
// import 'package:sohelrana_portfolio/responsive/responsive.dart';
// import 'package:sohelrana_portfolio/widgets/responsive_container.dart';

// import '../../app/scroll_sections.dart';

// class HeroSection extends StatelessWidget {
//   const HeroSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Responsive.isDesktop(context);

//     return Container(
//       key: ScrollSections.heroKey,
//       width: double.infinity,
//       constraints: const BoxConstraints(minHeight: 900),
//       padding: const EdgeInsets.only(top: 120, bottom: 80),
//       child: ResponsiveContainer(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             if (constraints.maxWidth >= 900) {
//               return const _DesktopHero();
//             }

//             return const _MobileHero();
//           },
//         ),
//       ),
//     );
//   }
// }

// class _DesktopHero extends StatelessWidget {
//   const _DesktopHero();

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Expanded(child: _HeroContent()),
//         const SizedBox(width: 80),
//         Expanded(
//           child: Container(
//             height: 500,
//             decoration: BoxDecoration(
//               color: AppColors.primaryColor.withOpacity(.08),
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: const Center(child: Icon(Icons.person, size: 180)),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class _MobileHero extends StatelessWidget {
//   const _MobileHero();

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         SizedBox(height: 30),

//         Icon(Icons.person, size: 140),

//         SizedBox(height: 50),

//         _HeroContent(),
//       ],
//     );
//   }
// }

// class _HeroContent extends StatelessWidget {
//   const _HeroContent();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("Hello, I'm", style: Theme.of(context).textTheme.titleLarge),

//         const SizedBox(height: 20),

//         Text(
//           "Sohel Rana",
//           style: Theme.of(context).textTheme.displayLarge?.copyWith(
//             fontWeight: FontWeight.bold,
//             color: AppColors.textPrimary,
//           ),
//         ),

//         const SizedBox(height: 20),

//         Text(
//           "Flutter Developer",
//           style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//             color: AppColors.primaryColor,
//             fontWeight: FontWeight.w700,
//           ),
//         ),

//         const SizedBox(height: 30),

//         SizedBox(
//           width: 550,
//           child: Text(
//             "I build beautiful, scalable and high-performance cross-platform applications using Flutter.",
//             style: Theme.of(context).textTheme.titleMedium?.copyWith(
//               color: AppColors.textSecondary,
//               height: 1.6,
//             ),
//           ),
//         ),

//         const SizedBox(height: 40),

//         Row(
//           children: [
//             Expanded(
//               child: PrimaryButton(text: "Download Resume", onPressed: () {}),
//             ),

//             const SizedBox(width: 20),

//             Expanded(
//               child: OutlinedButton(
//                 onPressed: () {},
//                 child: const Text("Contact Me"),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
