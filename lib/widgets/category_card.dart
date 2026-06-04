import 'package:flutter/material.dart';

import '../models/spend_category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final SpendCategory category;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedScale(
      scale: isSelected ? 1 : 0.98,
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutCubic,
        width: 126,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF18312A) : const Color(0xFFFFFCF7),
          borderRadius: BorderRadius.circular(26),
          border: Border.all(
            color: isSelected ? Colors.transparent : const Color(0xFFE2D7CA),
          ),
          boxShadow: isSelected
              ? const [
                  BoxShadow(
                    color: Color(0x2217322B),
                    blurRadius: 26,
                    offset: Offset(0, 16),
                  ),
                ]
              : const [],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(26),
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: category.tint.withValues(
                    alpha: isSelected ? 0.22 : 0.14,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  category.icon,
                  color: isSelected ? Colors.white : category.tint,
                ),
              ),
              const Spacer(),
              Text(
                category.label,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: isSelected ? Colors.white : const Color(0xFF18312A),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '\$${category.amount.toStringAsFixed(0)}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: 15,
                  color: isSelected
                      ? Colors.white.withValues(alpha: 0.8)
                      : const Color(0xFF5F6F69),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
