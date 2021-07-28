import 'package:flutter/material.dart';
import 'package:portfolio/models/recent_project.dart';

class ProjectCard extends StatefulWidget {
  final RecentProjects projects;
  const ProjectCard({Key? key, required this.projects}) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: (isHover)
          ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 220,
                width: 260,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.projects.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 7,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            )
          : Container(
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
            ),
    );
  }
}
