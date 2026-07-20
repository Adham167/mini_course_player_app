class CourseModel {
  final String id;
  final String title;
  final String thumbnailUrl;
  final int durationSeconds;
  final String description;
  final String videoUrl;
  final double progress;

  CourseModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.durationSeconds,
    required this.description,
    required this.videoUrl,
    this.progress = 0.0,
  });
  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
      durationSeconds: json['durationSeconds'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }
}
