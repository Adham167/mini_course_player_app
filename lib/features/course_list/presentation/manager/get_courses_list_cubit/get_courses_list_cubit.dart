import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mini_course_player_app/features/course_list/data/models/course_model.dart';
import 'package:mini_course_player_app/features/course_list/data/service/course_service.dart';

part 'get_courses_list_state.dart';

class GetCoursesListCubit extends Cubit<GetCoursesListState> {
  GetCoursesListCubit(this.courseService) : super(GetCoursesListInitial());

  final CourseService courseService;

  Future<void> getCourses() async {
    emit(GetCoursesListLoading());

    try {
      final courses = await courseService.getCourses();

      emit(GetCoursesListSuccess(courses: courses));
    } catch (e) {
      emit(GetCoursesListFailure(errMessage: e.toString()));
    }
  }
}
