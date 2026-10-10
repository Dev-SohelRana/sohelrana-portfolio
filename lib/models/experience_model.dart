class ExperienceModel {
  final String position;
  final String company;
  final String duration;
  final String description;
  final List<String> skills;
  final bool current;

  const ExperienceModel({
    required this.position,
    required this.company,
    required this.duration,
    required this.description,
    this.skills = const [],
    this.current = false,
  });
}
