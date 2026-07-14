class ProjectModel {
  final String number;

  final String title;

  final String description;

  final bool published;

  final List<String> screenshots;

  final List<String> technologies;

  final String githubUrl;

  final String playStoreUrl;

  final String appStoreUrl;

  const ProjectModel({
    required this.number,
    required this.title,
    required this.description,
    required this.published,
    required this.screenshots,
    required this.technologies,
    required this.githubUrl,
    required this.playStoreUrl,
    required this.appStoreUrl,
  });
}
// class ProjectModel {
//   final String number;
//   final String title;
//   final String description;
//   final String image;

//   final bool published;

//   final List<String> technologies;

//   final String githubUrl;
//   final String playStoreUrl;
//   final String appStoreUrl;

//   const ProjectModel({
//     required this.number,
//     required this.title,
//     required this.description,
//     required this.image,
//     required this.published,
//     required this.technologies,
//     required this.githubUrl,
//     required this.playStoreUrl,
//     required this.appStoreUrl,
//   });
// }
