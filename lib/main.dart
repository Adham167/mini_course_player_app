import 'package:flutter/material.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/my_courses_view.dart';

void main() {
  runApp(const MiniCoursePlayerApp());
}

class MiniCoursePlayerApp extends StatelessWidget {
  const MiniCoursePlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCoursesView(),
    );
  }
}
