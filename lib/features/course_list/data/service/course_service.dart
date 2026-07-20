import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mini_course_player_app/core/services/progress_service.dart';

import '../models/course_model.dart';

class CourseService {
  Future<List<CourseModel>> getCourses() async {
    final jsonString = await rootBundle.loadString('assets/courses.json');

    final decoded = jsonDecode(jsonString);

    final List<CourseModel> courses = (decoded['courses'] as List)
        .map((e) => CourseModel.fromJson(e))
        .toList();

    final progressService = ProgressService();

    for (final course in courses) {
      final seconds = await progressService.loadProgress(course.id);

      course.progress = seconds / course.durationSeconds;
      if (course.progress > 1) {
        course.progress = 1;
      }
    }

    return courses;
  }
}
