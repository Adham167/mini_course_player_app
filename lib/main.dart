import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/my_courses_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MiniCoursePlayerApp(),
    ),
  );
}

class MiniCoursePlayerApp extends StatelessWidget {
  const MiniCoursePlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MyCoursesView(),
    );
  }
}
