import 'package:shared_preferences/shared_preferences.dart';

class ProgressService {
  static const String _progressKeyPrefix = 'course_progress_';
  Future<void> saveProgress(String courseId, int seconds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('$_progressKeyPrefix$courseId', seconds);
  }

  Future<int> loadProgress(String courseId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('$_progressKeyPrefix$courseId') ?? 0;
  }
}
