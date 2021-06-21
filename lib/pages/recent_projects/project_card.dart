import 'package:flutter/material.dart';
import 'package:portfolio/models/recent_project.dart';

class ProjectCard extends StatefulWidget {
  final RecentProjects projects;
  const ProjectCard({Key? key, required this.projects}) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  String sss =
      'https://firebasestorage.googleapis.com/v0/b/my-portfolio-96f42.appspot.com/o/recent_projects%2F1624256437978000?alt=media&token=9e8b4894-92a2-4ef7-a425-f4d141314ff0';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.width * 0.16,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfrLAZZRhW85ny1UWBbuyo4_ATKJgx7dHK6Q&usqp=CAU'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Text(
            widget.projects.title,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
