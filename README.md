# Spend Summary App

A Flutter take-home assignment that implements a Spend Summary screen with mock data, a monthly spend hero card, a horizontal category scroller, a recent transactions list, and a floating action button.

## Features

- Monthly spend summary card with percentage change vs last month
- Horizontally scrollable category cards with icons and spend totals
- Recent transactions section driven by hardcoded mock data
- Category tap interaction with animated filtering
- Floating action button for the add-expense entry point

## Run Locally

```bash
flutter pub get
flutter run
```

## Validation

```bash
flutter test
flutter analyze
```

## AI Usage Note

Built with GitHub Copilot using GPT-5.4. I used AI to scaffold the Flutter project, generate and refine the UI implementation, update the widget test, and help document the project. Final code, validation, and screenshot capture were reviewed and executed in the local environment.

## Screenshots

Captured on the Android emulator `Medium Phone API 36.1`.

- Overview: `screenshots/spend-summary-home.png`
- Category interaction: `screenshots/spend-summary-category.png`

## Project Structure

- `lib/main.dart`: main screen implementation and hardcoded mock data
- `test/widget_test.dart`: widget test for rendering and category filtering
- `screenshots/`: emulator screenshots included for submission
