part of 'get_courses_list_cubit.dart';

sealed class GetCoursesListState {}

final class GetCoursesListInitial extends GetCoursesListState {}

final class GetCoursesListLoading extends GetCoursesListState {}

final class GetCoursesListFailure extends GetCoursesListState {
  final String errMessage;

  GetCoursesListFailure({required this.errMessage});
}

final class GetCoursesListSuccess extends GetCoursesListState {
  final List<CourseModel> courses;

  GetCoursesListSuccess({required this.courses});
}
