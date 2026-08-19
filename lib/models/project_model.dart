class ProjectModel {
  final String number;

  final String title;

  final String description;

  final bool published;

  final List<String> screenshots;

  final List<String> technologies;

  // final String githubUrl;

  final String? playStoreUrl;

  final String? appStoreUrl;

  const ProjectModel({
    required this.number,
    required this.title,
    required this.description,
    required this.published,
    required this.screenshots,
    required this.technologies,
    // required this.githubUrl,
    this.playStoreUrl,
    this.appStoreUrl,
  });
}
