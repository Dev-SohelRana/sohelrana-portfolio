import 'package:flutter/material.dart';

import '../../app/home_controller.dart';
import '../../widgets/logo.dart';

class MobileNavbar extends StatelessWidget {
  final HomeController controller;

  const MobileNavbar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Logo(),

        const Spacer(),

        IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }
}
