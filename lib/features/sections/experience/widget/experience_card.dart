import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/models/experience_model.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;
  final bool isLast;

  const ExperienceCard({
    super.key,
    required this.experience,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: experience.current
                    ? Theme.of(context).colorScheme.primary
                    : Colors.white,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 3,
                ),
                shape: BoxShape.circle,
              ),
            ),

            if (!isLast)
              Container(width: 2, height: 170, color: Colors.grey.shade300),
          ],
        ),

        const SizedBox(width: 24),

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.position,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                // Text(
                //   experience.company,
                //   style: TextStyle(
                //     color: Theme.of(context).colorScheme.primary,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                Wrap(
                  spacing: 12,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      experience.company,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    if (experience.current)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade50,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Text(
                          "Current",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(experience.duration),

                const SizedBox(height: 20),

                Text(
                  experience.description,
                  style: const TextStyle(height: 1.7),
                ),
                const SizedBox(height: 20),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Chip(label: const Text("Flutter")),

                    Chip(label: const Text("Firebase")),

                    Chip(label: const Text("REST API")),

                    Chip(label: const Text("Clean Architecture")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
