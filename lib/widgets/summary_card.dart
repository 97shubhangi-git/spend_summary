import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.totalSpend,
    required this.percentageChange,
    required this.accent,
  });

  final double totalSpend;
  final double percentageChange;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 12, 122, 165),
            Color.fromRGBO(73, 169, 185, 1),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x2217322B),
            blurRadius: 30,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(Icons.insights_rounded, color: accent),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.trending_up_rounded,
                      color: Color(0xFFFFD9AA),
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '+${percentageChange.toStringAsFixed(1)}%',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: const Color(0xFFFFE7C4),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Text(
            '\$${totalSpend.toStringAsFixed(2)}',
            style: theme.textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontSize: 38,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Monthly spend',
            style: theme.textTheme.titleMedium?.copyWith(
              color: const Color(0xFFD8E3DD),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(999),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: 0.72,
                child: Container(
                  decoration: BoxDecoration(
                    color: accent,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '12.4% higher than last month',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: const Color(0xFFBFD0C8),
            ),
          ),
        ],
      ),
    );
  }
}
