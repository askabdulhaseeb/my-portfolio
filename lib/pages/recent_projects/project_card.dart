import 'package:flutter/material.dart';
import 'package:portfolio/models/recent_project.dart';

class ProjectCard extends StatefulWidget {
  final RecentProjects projects;
  const ProjectCard({Key? key, required this.projects}) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              height: 220,
              width: 260,
              child: Image(
                image: AssetImage(widget.projects.thumnail),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 220,
              width: 260,
              color: Colors.black.withOpacity(0.3),
            ),
            Container(
              height: 220,
              width: 260,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.bottomCenter,
              child: Text(
                widget.projects.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
