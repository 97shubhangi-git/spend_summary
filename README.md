# Spend Summary App

A Flutter take-home assignment that implements a modern Spend Summary screen using mock data. The application includes a monthly spend overview, category-wise spending insights, recent transactions, smooth animations, and a floating action button.

## Features

* Monthly spend summary card displaying total spend and percentage change compared to the previous month
* Horizontally scrollable spending categories with icons and spend totals
* Recent transactions list using hardcoded mock data
* Category-based transaction filtering with smooth animations
* Modern UI built with Material 3 and custom styling
* Floating Action Button (FAB) for future expense entry flow

## Tech Stack

* Flutter
* Dart
* Material 3
* Google Fonts

## Run Locally

```bash
flutter pub get
flutter run
```

## Validation

```bash
flutter analyze
flutter test
```

## AI Usage Note

AI tools were used to assist with UI brainstorming, code refinement, animation ideas, widget structure, and documentation. All implementation, testing, validation, and final review were completed manually before submission.

## Screenshots

Captured on Android Emulator.

### Home Screen

![Home Screen](screenshots/home_screen.png)

### Category Filtering

![Category Filtering](screenshots/category_filter.png)

### Transactions Filtering

![Transactions List](screenshots/transactions_list.png)
![Transactions List](screenshots/transactions_list2.png)


## Project Structure

lib/
├── main.dart
├── screenshots/
└── test/

## Notes

* Uses hardcoded/mock data as requested.
* No backend integration.
* Focused on clean UI, smooth interactions, and responsive design.
