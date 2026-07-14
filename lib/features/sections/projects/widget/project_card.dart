import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/models/project_model.dart';
import 'project_badge.dart';
import 'tech_chip.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  final bool reverse;

  const ProjectCard({super.key, required this.project, this.reverse = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 900;

        if (!isDesktop) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _ProjectImage(project.image),
              _ProjectImage(screenshots: project.screenshots),
              const SizedBox(height: 32),
              _ProjectContent(project: project),
            ],
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: reverse
              ? [
                  Expanded(flex: 6, child: _ProjectContent(project: project)),
                  const SizedBox(width: 60),
                  Expanded(
                    flex: 4,
                    child: _ProjectImage(screenshots: project.screenshots),
                  ),
                ]
              : [
                  Expanded(
                    flex: 4,
                    child: _ProjectImage(screenshots: project.screenshots),
                  ),
                  const SizedBox(width: 60),
                  Expanded(flex: 6, child: _ProjectContent(project: project)),
                ],
        );
      },
    );
  }
}

class _ProjectImage extends StatefulWidget {
  final List<String> screenshots;

  const _ProjectImage({required this.screenshots});

  @override
  State<_ProjectImage> createState() => _ProjectImageState();
}

class _ProjectImageState extends State<_ProjectImage> {
  late final PageController _pageController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changePage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );

    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 560),
      child: Column(
        children: [
          /// Main Screenshot
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  offset: const Offset(0, 18),
                  color: Colors.black.withOpacity(.08),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.screenshots.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, index) {
                  return Image.asset(
                    widget.screenshots[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 18),

          /// Thumbnail Gallery
          SizedBox(
            height: 60,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.screenshots.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) {
                final selected = currentIndex == index;

                return InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: () => _changePage(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: selected ? 3 : 1,
                        color: selected
                            ? Theme.of(context).colorScheme.primary
                            : Colors.grey.shade300,
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      widget.screenshots[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class _ProjectImage extends StatelessWidget {
//   final String image;

//   const _ProjectImage(this.image);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(maxWidth: 520),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(24),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(.08),
//             blurRadius: 25,
//             offset: const Offset(0, 15),
//           ),
//         ],
//       ),
//       clipBehavior: Clip.antiAlias,
//       child: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: Image.asset(image, fit: BoxFit.cover),
//       ),
//     );
//   }
// }

class _ProjectContent extends StatelessWidget {
  final ProjectModel project;

  const _ProjectContent({required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.number,
          style: TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade200,
            height: .8,
          ),
        ),

        const SizedBox(height: 12),

        ProjectBadge(published: project.published),

        const SizedBox(height: 24),

        Text(
          project.title,
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 18),

        Text(
          project.description,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(height: 1.8),
        ),

        const SizedBox(height: 30),

        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: project.technologies.map((e) => TechChip(text: e)).toList(),
        ),

        const SizedBox(height: 40),

        Row(
          children: [
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.launch),
              label: const Text("Live"),
            ),

            const SizedBox(width: 16),

            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.code),
              label: const Text("GitHub"),
            ),
          ],
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:sohelrana_portfolio/models/project_model.dart';

// class ProjectCard extends StatelessWidget {
//   final ProjectModel project;
//   final bool reverse;

//   const ProjectCard({super.key, required this.project, required this.reverse});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(28),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(24),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           final desktop = constraints.maxWidth > 750;

//           if (desktop) {
//             return Row(
//               children: [
//                 Expanded(flex: 4, child: _ProjectImage(project.image)),
//                 const SizedBox(width: 40),
//                 Expanded(flex: 6, child: _ProjectContent(project)),
//               ],
//             );
//           }

//           return Column(
//             children: [
//               _ProjectImage(project.image),
//               const SizedBox(height: 24),
//               _ProjectContent(project),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

// class _ProjectImage extends StatelessWidget {
//   final String image;

//   const _ProjectImage(this.image);

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: .65,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(20),
//         child: Image.asset(image, fit: BoxFit.cover),
//       ),
//     );
//   }
// }

// class _ProjectContent extends StatelessWidget {
//   final ProjectModel project;

//   const _ProjectContent(this.project);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           project.title,
//           style: Theme.of(
//             context,
//           ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
//         ),

//         const SizedBox(height: 18),

//         Text(project.description, style: Theme.of(context).textTheme.bodyLarge),

//         const SizedBox(height: 24),

//         Wrap(
//           spacing: 10,
//           runSpacing: 10,
//           children: project.technologies
//               .map((tech) => Chip(label: Text(tech)))
//               .toList(),
//         ),

//         const SizedBox(height: 30),

//         Wrap(
//           spacing: 16,
//           children: [
//             FilledButton(onPressed: () {}, child: const Text("Live Demo")),

//             OutlinedButton(onPressed: () {}, child: const Text("GitHub")),
//           ],
//         ),
//       ],
//     );
//   }
// }
