import 'package:flutter/material.dart';

import '../data/mock_data.dart';
import '../widgets/category_card.dart';
import '../widgets/summary_card.dart';
import '../widgets/transaction_card.dart';

class SpendSummaryScreen extends StatefulWidget {
  const SpendSummaryScreen({super.key});

  @override
  State<SpendSummaryScreen> createState() => _SpendSummaryScreenState();
}

class _SpendSummaryScreenState extends State<SpendSummaryScreen> {
  int _selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selectedCategory = _selectedCategoryIndex >= 0
        ? mockSpendCategories[_selectedCategoryIndex]
        : null;
    final transactions = selectedCategory == null
        ? mockTransactions
        : mockTransactions
              .where(
                (transaction) => transaction.category == selectedCategory.label,
              )
              .toList(growable: false);

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Quick add is ready for the next expense flow.'),
              ),
            );
        },
        backgroundColor: const Color(0xFF18312A),
        foregroundColor: Colors.white,
        elevation: 0,
        icon: const Icon(Icons.add_rounded),
        label: const Text('Add expense'),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7F0E6), Color(0xFFECE5DA)],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 96),
            children: [
              Text('June spend', style: theme.textTheme.headlineLarge),
              const SizedBox(height: 8),
              Text(
                'Track where the month is moving and trim the noisy categories first.',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              SummaryCard(
                totalSpend: 2847.63,
                percentageChange: 12.4,
                accent: selectedCategory?.tint ?? const Color(0xFFE88B5A),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: theme.textTheme.titleLarge),
                  Text(
                    'Tap to focus',
                    style: theme.textTheme.bodyMedium?.copyWith(fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: mockSpendCategories.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final category = mockSpendCategories[index];
                    final isSelected = index == _selectedCategoryIndex;
                    return CategoryCard(
                      category: category,
                      isSelected: isSelected,
                      onTap: () {
                        setState(() {
                          _selectedCategoryIndex = isSelected ? -1 : index;
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent transactions',
                    style: theme.textTheme.titleLarge,
                  ),
                  Text(
                    '${transactions.length} items',
                    style: theme.textTheme.bodyMedium?.copyWith(fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeInCubic,
                child: Column(
                  key: ValueKey(selectedCategory?.label ?? 'all'),
                  children: [
                    for (var index = 0; index < transactions.length; index++)
                      TweenAnimationBuilder<double>(
                        key: ValueKey(
                          '${selectedCategory?.label ?? 'all'}-${transactions[index].title}',
                        ),
                        tween: Tween(begin: 24, end: 0),
                        duration: Duration(milliseconds: 240 + (index * 60)),
                        curve: Curves.easeOutCubic,
                        builder: (context, value, child) {
                          return Transform.translate(
                            offset: Offset(0, value),
                            child: Opacity(
                              opacity: 1 - (value / 24).clamp(0, 1),
                              child: child,
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: index == transactions.length - 1 ? 0 : 12,
                          ),
                          child: TransactionCard(
                            transaction: transactions[index],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
