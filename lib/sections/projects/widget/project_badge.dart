import 'package:flutter/material.dart';

class ProjectBadge extends StatelessWidget {
  final bool published;

  const ProjectBadge({super.key, required this.published});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: published ? Colors.green.shade50 : Colors.orange.shade50,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle,
            size: 10,
            color: published ? Colors.green : Colors.orange,
          ),
          const SizedBox(width: 8),
          Text(published ? "Published" : "In Development"),
        ],
      ),
    );
  }
}
