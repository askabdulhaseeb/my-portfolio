import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_images.dart';
import 'package:portfolio/models/recent_project.dart';
import 'package:portfolio/pages/recent_projects/project_card.dart';
import 'package:portfolio/pages/widgets/customiz_underline_text.dart';

class RecentProjectsPage extends StatefulWidget {
  const RecentProjectsPage({Key? key}) : super(key: key);
  @override
  _RecentProjectsPageState createState() => _RecentProjectsPageState();
}

class _RecentProjectsPageState extends State<RecentProjectsPage> {
  List<RecentProjects> _recentProjects = [
    RecentProjects(
      title: 'SafarKar - Travel & Explore PK',
      description:
          'Users can make trip plans and can also view others plan\n\nLanguage: Flutter, Dart\nDatabase: Firebase\nGoogle direction, places, map API\n',
      thumnail: iSafarKarLogo,
    ),
    RecentProjects(
      title: 'Review App',
      description:
          'Users can add product and other users can add/view video review about that product.\n\nLanguage: Flutter, Dart\nDatabase: Firebase',
      thumnail: iReviewLogo,
    ),
    RecentProjects(
      title: 'NorthWest Reverse Mortgage App',
      description:
          'Users can calculate the mortgage value.\n\nLanguage: Flutter, Dart\nDatabase: Firebase',
      thumnail: iNorthwestLogo,
    ),
    RecentProjects(
      title: 'Golden Time Treading App',
      description:
          'Users can Tread realtime. Users can also chat with others.\n\nLanguage: Flutter, Dart\nDatabase: Firebase',
      thumnail: iGoldenTimeTreadingLogo,
    ),
    RecentProjects(
      title: 'Easyio App',
      description:
          'Online POS for any shop. Users can generate bill search item and details.\n\nLanguage: Flutter, Dart\nDatabase: Firebase',
      thumnail: iEasyioLogo,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return (_recentProjects.length <= 0)
        ? Container()
        : Container(
            padding: (size.width > 800)
                ? const EdgeInsets.all(120)
                : const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomizeUnderlineText(size: size, title: 'Recent Projects'),
                SizedBox(
                  height: 230,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _recentProjects.length,
                          itemBuilder: (context, index) {
                            return ProjectCard(
                                projects: _recentProjects[index]);
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
