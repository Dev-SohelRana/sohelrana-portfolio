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

      technologies: [
        "Dart",
        "Flutter",
        "Firebase",
        "REST API",
        "Stripe",
        "Apple IAP",
      ],
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
      technologies: ["Dart", "Flutter", "Firebase", "Rest API", "Stripe"],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "04",
      playStoreUrl: '',
      appStoreUrl:
          "https://apps.apple.com/us/app/cr-tec-%D8%B3%D9%8A%D8%A7%D8%B1%D8%AA%D9%83/id6775363864",
      title: "Cr Tec",
      description:
          "CR Tec is a digital platform that simplifies the entire vehicle maintenance journey, making it easier to manage every step from creating a service request to collecting your repaired vehicle. Designed for both customers and workshops, the app brings everything together in one place for a faster, more transparent, and hassle-free experience. Customers can submit maintenance requests by entering their vehicle details and describing the issue or accident. They can then track the progress of their request in real time, receive detailed inspection reports, review repair estimates and completion timelines, compare workshop quotations, and choose the option that best suits their needs. By connecting vehicle owners, repair workshops, and spare parts providers on a single platform, CR Tec improves communication, streamlines workflows, and increases transparency throughout the repair process. Whether you need routine maintenance or major repairs, CR Tec helps you access trusted automotive services with greater convenience, efficiency, and confidence.",
      screenshots: [AppImages.crTec, AppImages.crTecApple],
      technologies: [
        "Dart",
        "Flutter",
        "Firebase",
        "Rest API",
        "Stripe",
        "Google Map",
      ],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "05",
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.app.unpuff',
      appStoreUrl: "https://apps.apple.com/us/app/unpuff/id6759361962",
      title: "Unpuff",
      description:
          "Unpuff is your personal companion for quitting smoking and building a healthier, smoke-free life. Whether you're taking your first step or trying again, Unpuff helps you stay focused with simple daily guidance, progress tracking, and positive encouragement—without guilt, pressure, or unrealistic expectations. Track your smoke-free journey, log cravings, understand your triggers, and watch your health improve while seeing the money you save over time. With daily motivation and practical tools, Unpuff helps you replace smoking with healthier habits and stay committed even when motivation fades. More than just a quit-smoking tracker, Unpuff is built to create lasting behavioural change. Every small victory moves you closer to a healthier future, and every setback is simply another opportunity to keep going. Because quitting isn't about being perfect—it's about making consistent progress, one day at a time.",
      screenshots: [
        AppImages.unpuff,
        AppImages.unpuffGoogle,
        AppImages.unpuffApple,
      ],
      technologies: ["Dart", "Flutter", "Firebase", "Rest API", "RevenueCat"],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "06",
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.app.lyvi',
      appStoreUrl: "https://apps.apple.com/us/app/lyvi/id6772883654",
      title: "Lyvi",
      description:
          "Lyvi is a roommate-matching platform built for college students and recent graduates moving to new cities. It helps users find compatible roommates based on lifestyle, education, career goals, and personal preferences, making it easier to build meaningful connections before moving in. Unlike traditional roommate-finding apps, Lyvi focuses on compatibility rather than just availability, helping create safer, more comfortable, and long-lasting living arrangements. Whether you're starting university, beginning a new job, or relocating for a fresh opportunity, Lyvi makes finding the right roommate simple, secure, and stress-free.",
      screenshots: [AppImages.lyvi, AppImages.lyviGoogle, AppImages.lyviApple],
      technologies: ["Dart", "Flutter", "Firebase", "Rest API"],
      // githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "07",
      playStoreUrl:
          'https://play.google.com/store/apps/details?id=com.app.lovewellme',
      appStoreUrl:
          "https://apps.apple.com/us/app/lovewell-parenting/id6761257091",
      title: "LoveWell Parenting",
      description:
          "LoveWell Parenting helps parents of school-age children, tweens, and teens build responsibility, healthy communication, and positive habits without constant conflict or power struggles. Using proven positive-discipline strategies, the app makes it easy to set clear expectations, encourage independence, and create a more peaceful home environment. Create customized rules, responsibilities, and reward systems, track your child's progress, and receive personalised guidance from an AI Parenting Coach available 24/7. With behaviour insights, progress tracking, and practical parenting tools, LoveWell helps you stay consistent while supporting your child's emotional and personal growth. Whether you're managing daily routines, improving communication, or encouraging better behaviour, LoveWell provides the structure and support you need to parent with confidence. Build stronger family relationships, reduce stress, and create lasting positive change—one day at a time.",
      screenshots: [
        AppImages.lovewell,
        AppImages.lovewellGoogle,
        AppImages.lovewellApple,
      ],
      technologies: ["Dart", "Flutter", "Firebase", "Rest API", "RevenueCat"],
      // githubUrl: "",
    ),
  ];
}
