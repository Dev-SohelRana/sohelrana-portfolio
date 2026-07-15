import 'package:sohelrana_portfolio/models/skills_model.dart';

class SkillData {
  static const List<SkillModel> items = [
    SkillModel(
      title: "Frontend",
      skills: [
        "Flutter",
        "Dart",
        "Responsive UI",
        "Material Design",
        "Animations",
      ],
    ),
    SkillModel(title: "Backend", skills: ["Firebase", "REST API"]),
    SkillModel(
      title: "Tools",
      skills: ["Git", "GitHub", "VS Code", "Android Studio", "Xcode"],
    ),
  ];
}
