class RecentProjects {
  final String title;
  final String description;
  final String thumnail;

  const RecentProjects({
    required this.title,
    required this.description,
    required this.thumnail,
  });

  factory RecentProjects.fromDocument(docs) {
    return RecentProjects(
      title: (docs.data()['title'] ?? '').toString(),
      description: (docs?.data()['description'] ?? '').toString(),
      thumnail: (docs?.data()['thumbnailURL'] ?? '').toString(),
    );
  }
  factory RecentProjects.fromMap(map) {
    return RecentProjects(
      title: map['title'].toString(),
      description: map['description'].toString(),
      thumnail: map['thumbnailURL'].toString(),
    );
  }
}
