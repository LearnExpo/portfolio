import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.tags,
    required this.githubUrl,
    required this.demoUrl,
  });

  final String title;
  final String description;
  final List<String> tags;
  final String githubUrl;
  final String demoUrl;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        transform: Matrix4.translationValues(0.0, _hovering ? -4 : 0, 0.0),
        decoration: BoxDecoration(
          color: const Color(0xFF121826),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: _hovering ? 0.28 : 0.16),
              blurRadius: _hovering ? 24 : 16,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      theme.colorScheme.primary.withValues(alpha: 0.35),
                      const Color(0xFF4ADE80).withValues(alpha: 0.25),
                    ],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.code_rounded,
                    size: 44,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.tags
                    .map(
                      (tag) => Chip(
                        label: Text(tag),
                        backgroundColor: const Color(0xFF1E253A),
                        labelStyle: const TextStyle(color: Color(0xFF8DD3FF)),
                        side: BorderSide.none,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.code_rounded),
                    tooltip: 'GitHub',
                  ),
                  const SizedBox(width: 8),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.open_in_new_rounded),
                    tooltip: 'Live demo',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
