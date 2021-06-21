import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/database/recent_projects_firebase_methods.dart';
import 'package:portfolio/models/recent_project.dart';
import 'package:portfolio/pages/recent_projects/project_card.dart';
import 'package:portfolio/pages/widgets/customiz_underline_text.dart';

class RecentProjectsPage extends StatefulWidget {
  const RecentProjectsPage({Key? key}) : super(key: key);
  @override
  _RecentProjectsPageState createState() => _RecentProjectsPageState();
}

class _RecentProjectsPageState extends State<RecentProjectsPage> {
  List<RecentProjects> _recentProjects = [];
  Future _getData() async {
    final QuerySnapshot? docs =
        await RecentProjectsFirebaseMethods().getAllProjects();
    docs!.docs.forEach((element) {
      _recentProjects.add(RecentProjects.fromDocument(element));
      setState(() {});
    });
    setState(() {});
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: (size.width > 800)
          ? const EdgeInsets.all(120)
          : const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizeUnderlineText(size: size, title: 'Recent Projects'),
          SizedBox(
            height: 400,
            child: ListView.builder(
              // itemCount: 4,
              itemCount: _recentProjects.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ProjectCard(projects: _recentProjects[index]),
                      const SizedBox(width: 20),
                      Container(
                        height: size.width * 0.16,
                        width: (size.width > 900) ? 300 : 200,
                        child: Text(
                          _recentProjects[index].description,
                          // maxLines: (size.width > 900) ? 10 : 6,
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
