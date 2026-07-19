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
}

final List<CourseModel> mockCourses = [
  CourseModel(
    id: "c001",
    title: "Intro to UI/UX Design",
    thumbnailUrl: "https://picsum.photos/seed/course1/400/225",
    durationSeconds: 30,
    description: "A short primer on UI/UX fundamentals.",
    videoUrl: "https://cdn.pixabay.com/video/2026/07/10/363199_large.mp4",
    progress: 0.4,
  ),
  CourseModel(
    id: "c002",
    title: "Digital Marketing Basics",
    thumbnailUrl: "https://picsum.photos/seed/course2/400/225",
    durationSeconds: 30,
    description: "Core concepts every marketer should know.",
    videoUrl: "https://cdn.pixabay.com/video/2026/03/31/343478_large.mp4",
    progress: 0.0,
  ),
  CourseModel(
    id: "c003",
    title: "Public Speaking Confidence",
    thumbnailUrl: "https://picsum.photos/seed/course3/400/225",
    durationSeconds: 30,
    description: "Practical tips to speak with confidence.",
    videoUrl: "https://cdn.pixabay.com/video/2026/07/01/361729_large.mp4",
    progress: 0.85,
  ),
  CourseModel(
    id: "c004",
    title: "Excel for Beginners",
    thumbnailUrl: "https://picsum.photos/seed/course4/400/225",
    durationSeconds: 30,
    description: "Spreadsheets from zero to comfortable.",
    videoUrl: "https://cdn.pixabay.com/video/2026/06/16/358693_large.mp4",
    progress: 0.1,
  ),
];
