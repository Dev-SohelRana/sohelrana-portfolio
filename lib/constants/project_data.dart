import 'package:sohelrana_portfolio/assets_helper/app_image.dart';

import '../../models/project_model.dart';

class ProjectData {
  static const projects = [
    ProjectModel(
      number: "01",

      title: "Lyvi",

      published: true,

      screenshots: [AppImages.lovewell, AppImages.lovewell, AppImages.lovewell],
      // published: true,
      // number: "01",
      playStoreUrl: '',
      appStoreUrl: "",
      // title: "Lyvi",
      description:
          "A roommate finding application for students and young professionals.",
      // image: AppImages.lovewell,
      technologies: ["Flutter", "Firebase", "Google Maps", "Stripe"],
      githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "02",
      playStoreUrl: '',
      appStoreUrl: "",
      title: "JackJaron",
      description:
          "Fitness tracking application with Google Maps and route management.",

      // image: AppImages.lovewell,
      screenshots: [AppImages.lovewell, AppImages.lovewell, AppImages.lovewell],

      technologies: ["Flutter", "Google Maps", "REST API"],
      githubUrl: "",
    ),

    ProjectModel(
      published: true,
      number: "03",
      playStoreUrl: '',
      appStoreUrl: "",
      title: "LoveWell Parenting",
      description:
          "A parenting application helping families monitor children's development.",

      // image: AppImages.lovewell,
      screenshots: [AppImages.lovewell, AppImages.lovewell, AppImages.lovewell],

      technologies: ["Flutter", "Firebase", "Provider"],
      githubUrl: "",
    ),
  ];
}
