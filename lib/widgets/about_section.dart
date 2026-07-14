import 'package:flutter/material.dart';

import 'section_heading.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final skills = <String>[
      'Flutter',
      'Dart',
      'Firebase',
      'CI/CD',
      'Git',
      'Figma',
      'REST APIs',
      'State Management',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 900;
          return isWide
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0xFF121826),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.08),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SectionHeading(
                              title: 'About Me',
                              subtitle:
                                  'A product-minded developer crafting polished, reliable apps.',
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'I’m a Flutter developer focused on building beautiful interfaces, scalable product experiences, and thoughtful engineering practices. I enjoy turning ambitious ideas into fast, dependable apps for web and mobile.',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                                height: 1.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0xFF121826),
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.08),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Core Skills',
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: skills
                                  .map(
                                    (skill) => InkWell(
                                      borderRadius: BorderRadius.circular(999),
                                      onTap: () {},
                                      child: AnimatedContainer(
                                        duration: const Duration(
                                          milliseconds: 180,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            999,
                                          ),
                                          color: const Color(0xFF1E253A),
                                        ),
                                        child: Text(
                                          skill,
                                          style: const TextStyle(
                                            color: Color(0xFF8DD3FF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: const Color(0xFF121826),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.08),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SectionHeading(
                            title: 'About Me',
                            subtitle:
                                'A product-minded developer crafting polished, reliable apps.',
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'I’m a Flutter developer focused on building beautiful interfaces, scalable product experiences, and thoughtful engineering practices. I enjoy turning ambitious ideas into fast, dependable apps for web and mobile.',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: const Color(0xFF121826),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.08),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Core Skills',
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: skills
                                .map(
                                  (skill) => InkWell(
                                    borderRadius: BorderRadius.circular(999),
                                    onTap: () {},
                                    child: AnimatedContainer(
                                      duration: const Duration(
                                        milliseconds: 180,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          999,
                                        ),
                                        color: const Color(0xFF1E253A),
                                      ),
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          color: Color(0xFF8DD3FF),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
