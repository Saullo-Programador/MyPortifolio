import 'package:flutter/material.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/education_section.dart';
import '../sections/experience_section.dart';
import '../sections/footer_section.dart';
import '../sections/hero_section.dart';
import '../sections/projects_section.dart';
import '../sections/skills_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ProjectsSection(),
            ExperienceSection(),
            EducationSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
