import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mini_course_player_app/features/course_list/data/models/course_model.dart';
import 'package:mini_course_player_app/features/course_list/presentation/views/widgets/course_card_widget.dart';

void main() {
  testWidgets('CourseCardWidget displays course information', (
    WidgetTester tester,
  ) async {
    final course = CourseModel(
      id: '1',
      title: 'Flutter Basics',
      thumbnailUrl: 'https://example.com/image.jpg',
      durationSeconds: 120,
      description: 'Learn Flutter',
      videoUrl: 'https://example.com/video.mp4',
      progress: 0.5,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: CourseCardWidget(course: course)),
      ),
    );

    expect(find.text('Flutter Basics'), findsOneWidget);
    expect(find.text('Duration: 120s'), findsOneWidget);
    expect(find.text('50%'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });
}
