import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final roles = [
      _ExperienceItem(
        title: 'Senior Flutter Developer',
        company: 'Northstar Labs',
        period: '2022 — Present',
        summary:
            'Leading product experiences for B2B web and mobile apps with a strong emphasis on accessibility and performance.',
      ),
      _ExperienceItem(
        title: 'Frontend Engineer',
        company: 'Bright Commerce',
        period: '2020 — 2022',
        summary:
            'Built customer-facing dashboards and shipping workflows for modern commerce platforms.',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          ...roles.map(
            (role) => Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF121826),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        role.title,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        role.period,
                        style: const TextStyle(color: Color(0xFF8DD3FF)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    role.company,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    role.summary,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperienceItem {
  const _ExperienceItem({
    required this.title,
    required this.company,
    required this.period,
    required this.summary,
  });

  final String title;
  final String company;
  final String period;
  final String summary;
}
