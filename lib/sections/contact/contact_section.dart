import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/constants/contact_data.dart';
import 'package:sohelrana_portfolio/constants/social_links.dart';
import 'package:sohelrana_portfolio/sections/contact/widgets/contact_info_card.dart';
import 'package:sohelrana_portfolio/services/url_service.dart';
import 'package:sohelrana_portfolio/widgets/hover_scale.dart';
import '../../app/scroll_sections.dart';
import '../../widgets/responsive_container.dart';
import '../../widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollSections.contactKey,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ResponsiveContainer(
        child: Column(
          children: [
            const SectionTitle(
              title: "Let's Work Together",
              subtitle: "Contact",
            ),

            const SizedBox(height: 70),

            LayoutBuilder(
              builder: (context, constraints) {
                final desktop = constraints.maxWidth >= 950;

                if (desktop) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(flex: 4, child: _ContactInfo()),

                      const SizedBox(width: 50),

                      Expanded(flex: 6, child: _ContactForm()),
                    ],
                  );
                }

                return Column(
                  children: const [
                    _ContactInfo(),
                    SizedBox(height: 40),
                    _ContactForm(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  const _ContactInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's build something amazing together.",
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        Text(
          "I'm always open to discussing new opportunities, freelance projects, or full-time roles. Feel free to reach out through any of the following platforms.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.grey.shade700,
            height: 1.7,
          ),
        ),

        const SizedBox(height: 40),

        ...ContactData.items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: ContactInfoCard(
              item: item,
              onTap: () {
                switch (item.title) {
                  case "Email":
                    UrlService.email(item.value);
                    break;

                  case "Phone":
                    UrlService.phone(item.value);
                    break;

                  case "Location":
                    UrlService.open(
                      "https://maps.google.com/?q=${Uri.encodeComponent(item.value)}",
                    );
                    break;
                }
              },
            ),
          ),
        ),

        const SizedBox(height: 35),

        Text(
          "Follow Me",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 18),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _SocialButton(
              icon:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/250px-GitHub_Invertocat_Logo.svg.png',
              label: "GitHub",
              onTap: () => UrlService.open(SocialLinks.github),
            ),

            _SocialButton(
              icon:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/LinkedIn_icon.svg/3840px-LinkedIn_icon.svg.png',
              label: "LinkedIn",
              onTap: () => UrlService.open(SocialLinks.linkedin),
            ),

            _SocialButton(
              icon:
                  'https://img.magnific.com/premium-vector/facebook-logo-vector-facebook-official-logo-vector-facebook-logo-illustrator_1002350-1803.jpg?semt=ais_hybrid&w=740&q=80',
              label: "Facebook",
              onTap: () => UrlService.open(SocialLinks.facebook),
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 90,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: icon,
              height: 28,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 10),

            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
// class _ContactInfo extends StatelessWidget {
//   const _ContactInfo();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ...ContactData.items.map(
//           (item) => Padding(
//             padding: const EdgeInsets.only(bottom: 18),
//             child: ContactInfoCard(
//               item: item,
//               onTap: () {
//                 switch (item.title) {
//                   case "Email":
//                     UrlService.email(item.value);
//                     break;

//                   case "Phone":
//                     UrlService.phone(item.value);
//                     break;

//                   case "Location":
//                     UrlService.open(
//                       "https://maps.google.com/?q=${Uri.encodeComponent(item.value)}",
//                     );
//                     break;
//                 }
//               },
//             ),
//           ),
//         ),

//         const SizedBox(height: 30),

//         Row(
//           children: [
//             IconButton(onPressed: () {}, icon: const Icon(Icons.code)),

//             IconButton(onPressed: () {}, icon: const Icon(Icons.work_outline)),

//             IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
//           ],
//         ),
//       ],
//     );
//   }
// }

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: "Subject",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),

          const SizedBox(height: 20),

          TextField(
            maxLines: 6,
            decoration: InputDecoration(
              labelText: "Message",
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            width: double.infinity,
            height: 55,
            child: HoverScale(
              child: FilledButton(
                onPressed: () {},
                child: const Text("Send Message"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
