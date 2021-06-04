import 'package:cloud_firestore/cloud_firestore.dart';

class RecentProjectsFirebaseMethods {
  final String _collectionName = 'recent_projects';
  getAllProjects() async {
    return await FirebaseFirestore.instance
        .collection(_collectionName)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }
}
