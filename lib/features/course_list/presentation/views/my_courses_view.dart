import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_course_player_app/features/course_list/data/service/course_service.dart';
import 'package:mini_course_player_app/features/course_list/presentation/manager/get_courses_list_cubit/get_courses_list_cubit.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/widgets/my_courses_view_body.dart';

class MyCoursesView extends StatelessWidget {
  const MyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCoursesListCubit(CourseService())..getCourses(),
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          title: const Text(
            'My Courses',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: MyCoursesViewBody(),
      ),
    );
  }
}
