class ExperienceModel {
  final String position;
  final String company;
  final String duration;
  final String description;
  final bool current;

  const ExperienceModel({
    required this.position,
    required this.company,
    required this.duration,
    required this.description,
    this.current = false,
  });
}
