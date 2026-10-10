import '../../models/experience_model.dart';

class ExperienceData {
  static const items = [
    ExperienceModel(
      position: "Flutter Developer",
      company: "Softvence Agency, Betopia Group",
      duration: "April 2025 - Present",
      current: true,
      skills: [
        "Flutter",
        "Firebase",
        "REST API",
        "Google Maps",
        "Stripe",
        "IAP",
        "RevenueCat",
        "Push Notifications",
        "Clean Architecture",
      ],
      description:
          "Developed and published production-ready Flutter applications for international clients, integrating REST APIs, Firebase, Google Maps, Stripe, Apple In-App Purchases (IAP), RevenueCat, and push notifications, while delivering seamless cross-platform experiences for Android and iOS.",
    ),

    ExperienceModel(
      position: "Flutter Developer Intern",
      company: "CodeCell Limited",
      duration: "October 2024 - March 2025",
      skills: ["Dart", "Flutter", "Firebase", "Clean Architecture"],
      description:
          "Building scalable Flutter applications for Android and iOS with Clean Architecture and Firebase.",
    ),
  ];
}
