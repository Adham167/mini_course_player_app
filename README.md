# Mini Course Player App

A Flutter application built as part of the Almentor Flutter Mobile Intern Technical Assessment.

The app allows users to browse available courses, watch course videos, and automatically resume playback from the last watched position after reopening the application.

---

## Features

- Browse available courses
- View course details
- Watch course videos
- Resume video playback from the last saved position
- Track course progress
- Local progress persistence using SharedPreferences
- Error handling for failed video loading
- Responsive and clean user interface

---

## Architecture

The project follows a simple feature-based structure.

```
lib/
├── core/
│   ├── services/
│   └── utils/
├── features/
│   ├── course_list/
│   │   ├── data/
│   │   └── presentation/
│   └── course_details/
│       └── presentation/
```

Each feature is separated into:

- **data**
  - models
  - services

- **presentation**
  - views
  - widgets
  - manager (Cubit)

Business logic is separated from the UI using **Flutter Bloc (Cubit)**.

---

## Packages Used

- flutter_bloc
- video_player
- shared_preferences
- device_preview

---

## Running the Project

```bash
flutter pub get
flutter run
```

---

## Testing

The project includes:

- Unit Test for `CourseModel.fromJson()`
- Widget Test for `CourseCardWidget`

Run all tests:

```bash
flutter test
```

---

## Edge Case Handled

If a video fails to load, the application displays a user-friendly error message instead of crashing.

---

## Future Improvements

- Add better UI animations.
- Add integration tests.
- Support offline course caching.
- Improve loading and retry experience.