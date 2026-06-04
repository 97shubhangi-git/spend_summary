import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/spend_summary_screen.dart';

void main() {
  runApp(const SpendSummaryApp());
}

class SpendSummaryApp extends StatelessWidget {
  const SpendSummaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTextTheme = GoogleFonts.manropeTextTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spend Summary',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4EFE7),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFDA6A4E),
          brightness: Brightness.light,
          primary: const Color(0xFF1F3C34),
          secondary: const Color(0xFFE88B5A),
          surface: const Color(0xFFFFFBF6),
        ),
        textTheme: baseTextTheme.copyWith(
          headlineLarge: GoogleFonts.dmSerifDisplay(
            fontSize: 42,
            color: const Color(0xFF1F342F),
          ),
          headlineMedium: baseTextTheme.headlineMedium?.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: const Color(0xFF18312A),
          ),
          titleLarge: baseTextTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF18312A),
          ),
          titleMedium: baseTextTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF24463F),
          ),
          bodyMedium: baseTextTheme.bodyMedium?.copyWith(
            color: const Color(0xFF4E615B),
            height: 1.35,
          ),
        ),
      ),
      home: const SpendSummaryScreen(),
    );
  }
}
