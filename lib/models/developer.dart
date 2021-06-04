class Developer {
  final String uid;
  final String name;
  final String imageURL;

  const Developer({
    required this.uid,
    required this.name,
    required this.imageURL,
  });

  factory Developer.fromDocument(docs) {
    return Developer(
      uid: (docs?.data()['uid'] ?? '').toString(),
      name: (docs?.data()['name'] ?? '').toString(),
      imageURL: (docs?.data()['imageURL'] ?? '').toString(),
    );
  }
}
