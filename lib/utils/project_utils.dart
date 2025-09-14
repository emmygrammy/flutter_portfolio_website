import 'package:my_portfolio/models/project_model.dart';

class ProjectUtils{
  static List<ProjectModel> projectList = [
    ProjectModel(
      title: 'Project 1',
      description: 'Project 1 description',
      image: 'assets/images/project1.png',
      technologies: ['Flutter', 'Dart', 'Firebase'],
      githubLink: 'https://github.com',
      liveDemoLink: 'https://live-demo.com',
    ),
  ];
}