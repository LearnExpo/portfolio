import 'package:flutter/material.dart';

import 'widgets/about_section.dart';
import 'widgets/contact_section.dart';
import 'widgets/experience_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/project_card.dart';
import 'widgets/responsive_nav.dart';
import 'widgets/section_heading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vikash Kumar Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4ADE80),
          brightness: Brightness.dark,
          surface: const Color(0xFF060816),
          tertiary: const Color(0xFF0B1020),
        ),
        scaffoldBackgroundColor: const Color(0xFF060816),
        textTheme: const TextTheme(
          displaySmall: TextStyle(fontFamily: 'Inter', color: Colors.white),
          headlineSmall: TextStyle(fontFamily: 'Inter', color: Colors.white),
          titleLarge: TextStyle(fontFamily: 'Inter', color: Colors.white),
          titleMedium: TextStyle(fontFamily: 'Inter', color: Colors.white),
          bodyLarge: TextStyle(fontFamily: 'Inter', color: Color(0xFFB8C2D9)),
          bodyMedium: TextStyle(fontFamily: 'Inter', color: Color(0xFFB8C2D9)),
        ),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutCubic,
      alignment: 0.08,
    );
    if (mounted) Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final projects = [
      const ProjectCard(
        title: 'Pulse Commerce',
        description:
            'A polished e-commerce experience for fast-moving retail teams.',
        tags: ['Flutter', 'Firebase', 'Payments'],
        githubUrl: '',
        demoUrl: '',
      ),
      const ProjectCard(
        title: 'Northstar CRM',
        description:
            'A lightweight CRM dashboard for field teams and client ops.',
        tags: ['Flutter Web', 'Supabase', 'Analytics'],
        githubUrl: '',
        demoUrl: '',
      ),
      const ProjectCard(
        title: 'Lumen Studio',
        description:
            'A content-first platform for creators managing multi-channel launches.',
        tags: ['Flutter', 'CI/CD', 'API'],
        githubUrl: '',
        demoUrl: '',
      ),
    ];

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color(0xFF0B1020),
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 24),
            ListTile(
              title: const Text('Home'),
              onTap: () => _scrollToSection(_homeKey),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () => _scrollToSection(_aboutKey),
            ),
            ListTile(
              title: const Text('Projects'),
              onTap: () => _scrollToSection(_projectsKey),
            ),
            ListTile(
              title: const Text('Experience'),
              onTap: () => _scrollToSection(_experienceKey),
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () => _scrollToSection(_contactKey),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ResponsiveNav(
              onNavigate: (section) {
                switch (section) {
                  case 'Home':
                    _scrollToSection(_homeKey);
                    break;
                  case 'About':
                    _scrollToSection(_aboutKey);
                    break;
                  case 'Projects':
                    _scrollToSection(_projectsKey);
                    break;
                  case 'Experience':
                    _scrollToSection(_experienceKey);
                    break;
                  case 'Contact':
                    _scrollToSection(_contactKey);
                    break;
                  default:
                    break;
                }
              },
              onMenuPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        key: _homeKey,
                        padding: const EdgeInsets.only(bottom: 16),
                        child: const HeroSection(),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        key: _aboutKey,
                        padding: const EdgeInsets.only(bottom: 24),
                        child: const AboutSection(),
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          child: SectionHeading(
                            title: 'Experience',
                            subtitle:
                                'A track record of shipping quality products and refining the product experience.',
                          ),
                        ),
                      ),
                      Padding(
                        key: _experienceKey,
                        padding: const EdgeInsets.only(bottom: 24),
                        child: const ExperienceSection(),
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 16),
                          child: SectionHeading(
                            title: 'Projects',
                            subtitle:
                                'Selected builds that combine storytelling, product focus, and strong engineering.',
                          ),
                        ),
                      ),
                      Padding(
                        key: _projectsKey,
                        padding: const EdgeInsets.only(bottom: 24),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final maxWidth = constraints.maxWidth;
                            final cardWidth = maxWidth >= 1100
                                ? (maxWidth - 40) / 3
                                : maxWidth >= 700
                                ? (maxWidth - 20) / 2
                                : maxWidth;
                            return Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: projects
                                  .map(
                                    (project) => SizedBox(
                                      width: cardWidth,
                                      child: project,
                                    ),
                                  )
                                  .toList(),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        key: _contactKey,
                        padding: const EdgeInsets.only(bottom: 24),
                        child: const ContactSection(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
