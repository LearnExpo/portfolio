import 'package:flutter/material.dart';

class ResponsiveNav extends StatelessWidget {
  const ResponsiveNav({
    super.key,
    required this.onNavigate,
    required this.onMenuPressed,
  });

  final ValueChanged<String> onNavigate;
  final VoidCallback onMenuPressed;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 800;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF0B1020).withValues(alpha: 0.9),
        border: Border(
          bottom: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Vikash Kumar',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          if (isMobile)
            IconButton(
              onPressed: onMenuPressed,
              icon: const Icon(Icons.menu_rounded, color: Colors.white),
            )
          else
            Row(
              children: [
                NavLink(label: 'Home', onTap: () => onNavigate('Home')),
                const SizedBox(width: 12),
                NavLink(label: 'About', onTap: () => onNavigate('About')),
                const SizedBox(width: 12),
                NavLink(label: 'Projects', onTap: () => onNavigate('Projects')),
                const SizedBox(width: 12),
                NavLink(
                  label: 'Experience',
                  onTap: () => onNavigate('Experience'),
                ),
                const SizedBox(width: 12),
                NavLink(label: 'Contact', onTap: () => onNavigate('Contact')),
              ],
            ),
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  const NavLink({super.key, required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: TextButton(
        onPressed: onTap,
        child: Text(label, style: const TextStyle(color: Color(0xFF8DD3FF))),
      ),
    );
  }
}
