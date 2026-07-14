import 'package:flutter/material.dart';

class HomeController {
  final ScrollController scrollController = ScrollController();

  VoidCallback? onScroll;

  HomeController() {
    scrollController.addListener(() {
      onScroll?.call();
    });
  }

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;

    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  void dispose() {
    scrollController.dispose();
  }
}

// import 'package:flutter/material.dart';

// class HomeController {
//   final ScrollController scrollController = ScrollController();

//   void scrollTo(GlobalKey key) {
//     final context = key.currentContext;

//     if (context == null) return;

//     Scrollable.ensureVisible(
//       context,
//       duration: const Duration(milliseconds: 700),
//       curve: Curves.easeInOut,
//     );
//   }

//   void dispose() {
//     scrollController.dispose();
//   }
// }
