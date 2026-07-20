import 'package:flutter_test/flutter_test.dart';
import 'package:mini_course_player_app/features/course_list/data/models/course_model.dart';

void main() {
  test('CourseModel.fromJson parses data correctly', () {
    final json = {
      "id": "c001",
      "title": "Flutter",
      "thumbnailUrl": "image.png",
      "durationSeconds": 120,
      "description": "Course Description",
      "videoUrl": "video.mp4",
    };

    final course = CourseModel.fromJson(json);

    expect(course.id, "c001");
    expect(course.title, "Flutter");
    expect(course.durationSeconds, 120);
    expect(course.description, "Course Description");
    expect(course.videoUrl, "video.mp4");
  });
}
