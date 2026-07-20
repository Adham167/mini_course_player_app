# Design Rationale

## Why Flutter Bloc (Cubit)?

I chose Flutter Bloc with Cubit because it provides a clean separation between business logic and the user interface while keeping the implementation lightweight.

I have previous experience building Flutter applications with Cubit, which allowed me to implement the required functionality quickly while maintaining readable and maintainable code.

For a project of this size, Cubit offers a simple solution without introducing unnecessary complexity.

---

## Resume Playback

The current playback position is saved locally using SharedPreferences.

During video playback, the current position is stored periodically. When the user opens the same course again, the saved position is loaded and the video automatically seeks to that timestamp.

This approach is simple, lightweight, and doesn't require any backend service.

---

## What I Would Improve With More Time

If I had more time, I would:

- Add smoother UI animations.
- Write integration tests covering the complete user flow.
- Cache course data for offline usage.
- Improve the loading and retry experience.