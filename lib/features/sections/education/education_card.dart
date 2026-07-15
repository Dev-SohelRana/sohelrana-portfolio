import 'package:flutter/material.dart';

class EducationCard extends StatefulWidget {
  final String degree;
  final String institute;
  final String duration;
  final String result;

  const EducationCard({
    super.key,
    required this.degree,
    required this.institute,
    required this.duration,
    required this.result,
  });

  @override
  State<EducationCard> createState() => _EducationCardState();
}

class _EducationCardState extends State<EducationCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, isHovering ? -8 : 0, 0),
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),

          border: Border.all(
            color: isHovering
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).dividerColor,
            width: 1.2,
          ),

          boxShadow: isHovering
              ? [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: const Offset(0, 10),
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(.15),
                  ),
                ]
              : [],
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              child: Icon(
                Icons.school,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(width: 25),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.degree,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),

                  const SizedBox(height: 10),

                  Text(
                    widget.institute,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),

                  const SizedBox(height: 8),

                  Text(widget.duration),

                  const SizedBox(height: 5),

                  Text(widget.result),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class EducationCard extends StatelessWidget {
//   final String degree;
//   final String institute;
//   final String duration;
//   final String result;

//   const EducationCard({
//     super.key,
//     required this.degree,
//     required this.institute,
//     required this.duration,
//     required this.result,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(28),
//       decoration: BoxDecoration(
//         color: Theme.of(context).cardColor,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Theme.of(context).dividerColor),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             radius: 28,
//             child: Icon(
//               Icons.school,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),

//           const SizedBox(width: 25),

//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(degree, style: Theme.of(context).textTheme.titleLarge),

//                 const SizedBox(height: 10),

//                 Text(institute, style: Theme.of(context).textTheme.titleMedium),

//                 const SizedBox(height: 8),

//                 Text(duration),

//                 const SizedBox(height: 5),

//                 Text(result),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
