import 'package:flutter/material.dart';
import 'package:sohelrana_portfolio/models/contact_item.dart';

class ContactInfoCard extends StatelessWidget {
  final ContactItem item;
  final VoidCallback? onTap;

  const ContactInfoCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            CircleAvatar(radius: 24, child: Icon(item.icon)),

            const SizedBox(width: 18),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(height: 6),

                  Text(item.value),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
