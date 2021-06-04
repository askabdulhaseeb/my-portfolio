import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/database/recent_projects_firebase_methods.dart';
import 'package:portfolio/models/recent_project.dart';
import 'package:portfolio/pages/widgets/customiz_underline_text.dart';

class RecentProjectsPage extends StatefulWidget {
  const RecentProjectsPage({Key? key}) : super(key: key);
  @override
  _RecentProjectsPageState createState() => _RecentProjectsPageState();
}

class _RecentProjectsPageState extends State<RecentProjectsPage> {
  List<RecentProjects> _recentProjects = [];
  Future _getData() async {
    QuerySnapshot docs = await RecentProjectsFirebaseMethods().getAllProjects();
    print(docs.docs.length);
    print(docs.docs[0]['title']);
    docs.docs.forEach((element) {
      print(element.data());
      _recentProjects.add(RecentProjects.fromDocument(element));
      // _recentProjects.add(RecentProjects.fromMap(element.data()));
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
      padding: const EdgeInsets.all(120),
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
                return Text('data');
              },
            ),
          ),
        ],
      ),
    );
  }
}
