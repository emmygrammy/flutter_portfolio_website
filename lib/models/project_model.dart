class ProjectModel{
  String title;
  String description;
  String image;
  List<String> technologies;
  String githubLink;
  String liveDemoLink;
  ProjectModel({
    required this.title,
    required this.description,
    required this.image,
    required this.technologies,
    required this.githubLink,
    required this.liveDemoLink,
  });
}