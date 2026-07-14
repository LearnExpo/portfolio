import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final socials = <_SocialItem>[
      _SocialItem(Icons.code_rounded, 'GitHub', 'github.com'),
      _SocialItem(Icons.business_center_rounded, 'LinkedIn', 'linkedin.com'),
      _SocialItem(Icons.alternate_email_rounded, 'Twitter', 'twitter.com'),
      _SocialItem(Icons.mail_outline_rounded, 'Email', 'alex@example.com'),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Let’s build something meaningful.',
            style: theme.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Open to collaboration, freelance work, and ambitious product ideas.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: socials
                .map(
                  (item) => OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(item.icon, color: const Color(0xFF8DD3FF)),
                    label: Text(item.label),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Color(0xFF2E3B56)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 24),
          Text(
            '© 2026 Vikash Kumar. Crafted with Flutter Web.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialItem {
  const _SocialItem(this.icon, this.label, this.value);

  final IconData icon;
  final String label;
  final String value;
}
