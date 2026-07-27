import 'package:sohelrana_portfolio/assets_helper/app_image.dart';

import '../../models/project_model.dart';

class ProjectData {
  static const projects = [
    ProjectModel(
      number: "01",
      title: "StepAhead Health",
      published: true,
      screenshots: [
        AppImages.stepAhead,
        AppImages.stepAheadGoogle,
        AppImages.stepAheadApple,
      ],
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.stepaheadhealth.app&pcampaignid=web_share',
      appStoreUrl:
          "https://apps.apple.com/us/app/stepahead-health/id6444579218",
      description:
          "StepAhead Health's main aim is to support the ongoing solution to healthcare in the United States with the primary aim of assisting the deprived (those with no insurance and living in remote areas) to get access to better healthcare. StepAhead Health intend assist patients with no insurance by connecting them to Physicians in their respective states using the StepAhead Health App. Another goal for StepAhead Health is to provide alternative care delivery methods to reduce costs (by eliminating transportation costs and sharing resources between providers and patients) through the StepAheadHealth App. In addition to the above, if a patient needs prescription but has lost his job and does not have any insurance, this patient can request for prescription refill through the StepAheadHealth App.",
      technologies: ["Dart", "Flutter", "Firebase", "Rest API", "Stripe"],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "02",
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.app.randomhabit',
      appStoreUrl: "https://apps.apple.com/us/app/random-habit/id6759515256",
      title: "Random Habit",
      description:
          "Random Habit is a unique habit-building app designed around how your brain actually creates lasting change. Instead of fixed schedules and streaks, it uses random reminders to help you complete one small action at a time, making habits easier to build and maintain. Whether you want to improve your fitness, mindfulness, confidence, or daily routines, Random Habit helps you create meaningful, long-term behaviour change—without guilt, pressure, or subscriptions. One small step, repeated consistently, can transform your life.",
      screenshots: [
        AppImages.randomHabit,
        AppImages.randomHabitGoogle,
        AppImages.randomHabitApple,
      ],

      technologies: ["Flutter", "Firebase", "REST API"],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "03",
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.app.fabricrootz',
      appStoreUrl: "https://apps.apple.com/us/app/fabricz/id6763974574",
      title: "Fabricz",
      description:
          "Fabric Rootz is a Brooklyn-based clothing company that produces clothing made for the formal or informal fashionista. We also specialize in fast local delivery and customer satisfaction globally.",
      screenshots: [
        AppImages.fabricz,
        AppImages.fabriczGoogle,
        AppImages.fabriczApple,
      ],
      technologies: ["Flutter", "Firebase", "Rest API", "Stripe"],
      // githubUrl: "",
    ),
  ];
}
