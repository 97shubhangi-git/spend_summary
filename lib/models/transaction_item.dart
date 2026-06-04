import 'package:flutter/material.dart';

class TransactionItem {
  const TransactionItem({
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.category,
    required this.time,
    required this.icon,
    required this.tint,
  });

  final String title;
  final String subtitle;
  final double amount;
  final String category;
  final String time;
  final IconData icon;
  final Color tint;
}
