import 'package:flutter/material.dart';
import 'package:mini_course_player_app/features/course_details/presentation/views/widgets/course_details_view_body.dart';
import 'package:mini_course_player_app/features/course_list/data/models/course_model.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key, required this.course});
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          course.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: CourseDetailsViewBody(course: course),
    );
  }
}
