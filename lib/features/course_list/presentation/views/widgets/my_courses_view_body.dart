import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_course_player_app/features/course_list/presentation/manager/get_courses_list_cubit/get_courses_list_cubit.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/widgets/course_card_widget.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/widgets/error_widget.dart';

class MyCoursesViewBody extends StatelessWidget {
  const MyCoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: BlocBuilder<GetCoursesListCubit, GetCoursesListState>(
        builder: (context, state) {
          if (state is GetCoursesListLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is GetCoursesListFailure) {
            return ErrorMessageWidget(errMessage: state.errMessage);
          }

          if (state is GetCoursesListSuccess) {
            return ListView.separated(
              itemCount: state.courses.length,
              separatorBuilder: (_, _) => const SizedBox(height: 16),
              itemBuilder: (_, index) {
                return CourseCardWidget(course: state.courses[index]);
              },
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
