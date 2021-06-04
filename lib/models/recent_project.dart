class RecentProjects {
  final String title;
  final String description;
  final String thumnail;
  final String timestamp;
  final List<String> developers;
  final List<String> projectURL;
  final List<String> projectType;

  const RecentProjects({
    required this.title,
    required this.description,
    required this.thumnail,
    required this.timestamp,
    required this.developers,
    required this.projectURL,
    required this.projectType,
  });

  factory RecentProjects.fromDocument(docs) {
    return RecentProjects(
      title: (docs.data()['title'] ?? '').toString(),
      description: (docs?.data()['description'] ?? '').toString(),
      thumnail: (docs?.data()['thumnail'] ?? '').toString(),
      timestamp: (docs?.data()['timestamp'] ?? '').toString(),
      developers: List<String>.from(docs?.data()['developers']),
      projectURL: List<String>.from(docs?.data()['project_URL'] ?? ''),
      projectType: List<String>.from(docs?.data()['project_type'] ?? ''),
    );
  }
  factory RecentProjects.fromMap(map) {
    return RecentProjects(
      title: map['title'].toString(),
      description: map['description'].toString(),
      thumnail: map['thumnail'].toString(),
      timestamp: map['timestamp'].toString(),
      developers: List<String>.from(map['developers']),
      projectURL: List<String>.from(map['project_URL'] ?? ''),
      projectType: List<String>.from(map['project_type'] ?? ''),
    );
  }
}
