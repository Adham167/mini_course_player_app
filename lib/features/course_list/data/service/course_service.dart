import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/course_model.dart';

class CourseService {
  Future<List<CourseModel>> getCourses() async {
    final jsonString = await rootBundle.loadString('assets/courses.json');
    final Map<String, dynamic> data = jsonDecode(jsonString);
    final List<dynamic> courses = data['courses'];
    return courses.map((e) => CourseModel.fromJson(e)).toList();
  }
}
