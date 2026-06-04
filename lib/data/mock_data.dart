import 'package:flutter/material.dart';

import '../models/spend_category.dart';
import '../models/transaction_item.dart';

const List<SpendCategory> mockSpendCategories = [
  SpendCategory(
    label: 'Food',
    amount: 684.22,
    icon: Icons.lunch_dining_rounded,
    tint: Color(0xFFF29A72),
  ),
  SpendCategory(
    label: 'Travel',
    amount: 412.18,
    icon: Icons.flight_takeoff_rounded,
    tint: Color(0xFF78A6A0),
  ),
  SpendCategory(
    label: 'Shopping',
    amount: 829.40,
    icon: Icons.shopping_bag_rounded,
    tint: Color(0xFF6688CC),
  ),
  SpendCategory(
    label: 'Bills',
    amount: 298.55,
    icon: Icons.receipt_long_rounded,
    tint: Color(0xFF6D7C58),
  ),
  SpendCategory(
    label: 'Health',
    amount: 176.45,
    icon: Icons.favorite_rounded,
    tint: Color(0xFFD7686C),
  ),
];

const List<TransactionItem> mockTransactions = [
  TransactionItem(
    title: 'Morning Brew',
    subtitle: 'Flat white and croissant',
    amount: 12.80,
    category: 'Food',
    time: 'Today, 8:42 AM',
    icon: Icons.coffee_rounded,
    tint: Color(0xFFF29A72),
  ),
  TransactionItem(
    title: 'Metro Pass Reload',
    subtitle: 'Weekly commute top-up',
    amount: 36.00,
    category: 'Travel',
    time: 'Today, 7:10 AM',
    icon: Icons.train_rounded,
    tint: Color(0xFF78A6A0),
  ),
  TransactionItem(
    title: 'North Market',
    subtitle: 'Fresh groceries',
    amount: 78.24,
    category: 'Food',
    time: 'Yesterday',
    icon: Icons.local_grocery_store_rounded,
    tint: Color(0xFFF29A72),
  ),
  TransactionItem(
    title: 'Atelier Mode',
    subtitle: 'Summer jacket',
    amount: 146.00,
    category: 'Shopping',
    time: 'Yesterday',
    icon: Icons.checkroom_rounded,
    tint: Color(0xFF6688CC),
  ),
  TransactionItem(
    title: 'Power Grid',
    subtitle: 'Monthly electricity bill',
    amount: 94.18,
    category: 'Bills',
    time: 'May 31',
    icon: Icons.bolt_rounded,
    tint: Color(0xFF6D7C58),
  ),
  TransactionItem(
    title: 'Pilates Studio',
    subtitle: 'Membership renewal',
    amount: 58.00,
    category: 'Health',
    time: 'May 30',
    icon: Icons.self_improvement_rounded,
    tint: Color(0xFFD7686C),
  ),
  TransactionItem(
    title: 'SkyHop',
    subtitle: 'Airport cab',
    amount: 41.60,
    category: 'Travel',
    time: 'May 28',
    icon: Icons.local_taxi_rounded,
    tint: Color(0xFF78A6A0),
  ),
];
