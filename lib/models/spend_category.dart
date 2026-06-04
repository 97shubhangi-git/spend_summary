import 'package:flutter/material.dart';

class SpendCategory {
  const SpendCategory({
    required this.label,
    required this.amount,
    required this.icon,
    required this.tint,
  });

  final String label;
  final double amount;
  final IconData icon;
  final Color tint;
}
