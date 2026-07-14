import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isWide = MediaQuery.sizeOf(context).width >= 900;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: isWide
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, I'm Vikash Kumar",
                          style: theme.textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            letterSpacing: -1.2,
                            height: 1.02,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'I build robust cross-platform applications with Flutter, modern UI systems, and reliable backend integrations.',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            height: 1.7,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            FilledButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.work_outline_rounded),
                              label: const Text('View My Work'),
                              style: FilledButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                backgroundColor: const Color(0xFF4ADE80),
                                foregroundColor: Colors.black,
                              ),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.download_rounded),
                              label: const Text('Download Resume'),
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                foregroundColor: const Color(0xFF8DD3FF),
                                side: const BorderSide(
                                  color: Color(0xFF2E3B56),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Container(
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF0F172A), Color(0xFF111827)],
                      ),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(
                                0xFF4ADE80,
                              ).withValues(alpha: 0.16),
                            ),
                            child: const Icon(
                              Icons.person_rounded,
                              size: 76,
                              color: Color(0xFF4ADE80),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Available for freelance & full-time roles',
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, I'm Vikash Kumar",
                      style: theme.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        letterSpacing: -1.2,
                        height: 1.02,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'I build robust cross-platform applications with Flutter, modern UI systems, and reliable backend integrations.',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.7,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        FilledButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.work_outline_rounded),
                          label: const Text('View My Work'),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                            backgroundColor: const Color(0xFF4ADE80),
                            foregroundColor: Colors.black,
                          ),
                        ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download_rounded),
                          label: const Text('Download Resume'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                            foregroundColor: const Color(0xFF8DD3FF),
                            side: const BorderSide(color: Color(0xFF2E3B56)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0F172A), Color(0xFF111827)],
                    ),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.08),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(
                              0xFF4ADE80,
                            ).withValues(alpha: 0.16),
                          ),
                          child: const Icon(
                            Icons.person_rounded,
                            size: 76,
                            color: Color(0xFF4ADE80),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Available for freelance & full-time roles',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
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
