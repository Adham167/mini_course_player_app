import 'package:flutter/material.dart';
import 'package:mini_course_player_app/features/course_list/data/models/course_model.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/widgets/course_card_widget.dart';

class MyCoursesViewBody extends StatelessWidget {
  const MyCoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          final course = mockCourses[index];
          return CourseCardWidget(course: course);
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: mockCourses.length,
      ),
    );
  }
}
