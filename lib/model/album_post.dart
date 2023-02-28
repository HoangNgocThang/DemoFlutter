class AlbumPost {
  final int id;
  final String title;

  const AlbumPost({required this.id, required this.title});

  factory AlbumPost.fromJson(Map<String, dynamic> json) {
    return AlbumPost(
      id: json['id'],
      title: json['title'],
    );
  }
}
