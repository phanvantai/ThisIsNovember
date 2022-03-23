class PostModel {
  final String id;
  final String title;
  final String? image;
  final String? description;
  final String date;
  final List<String>? tags;
  final String content;
  final String category;
  String? nextPost;
  String? previousPost;

  PostModel({
    required this.id,
    required this.title,
    required this.date,
    required this.content,
    required this.category,
    this.image,
    this.description,
    this.tags,
    this.nextPost,
    this.previousPost,
  });
}
