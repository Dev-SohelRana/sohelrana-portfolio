import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter Developer",
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 24),

        Text(
          "I'm Sohel Rana, a passionate Flutter Developer with experience building high-quality Android, iOS and Web applications using Flutter. I enjoy transforming ideas into fast, scalable and user-friendly products with clean architecture and modern development practices.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.8),
        ),

        const SizedBox(height: 20),

        Text(
          "I have worked on social media apps, health platforms, education systems, e-commerce solutions and many custom business applications.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.8),
        ),

        const SizedBox(height: 40),

        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: const [
            _InfoCard(title: "Experience", value: "2+ Years"),
            _InfoCard(title: "Projects", value: "20+"),
            _InfoCard(title: "Live Apps", value: "20+"),
            _InfoCard(title: "Platforms", value: "Android • iOS • Web"),
          ],
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String value;

  const _InfoCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
