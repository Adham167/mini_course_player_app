import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_course_player_app/features/course_list/presentation/manager/get_courses_list_cubit/get_courses_list_cubit.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error_outline, color: Colors.red, size: 50),
          SizedBox(height: 12),
          Text(errMessage),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<GetCoursesListCubit>(context).getCourses();
            },
            child: const Text("Retry"),
          ),
        ],
      ),
    );
  }
}
