import 'package:flutter/material.dart';
import '../../widgets/glass_container.dart';
import '../../widgets/section_title.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});
  Widget buildTimelineItem({
    required String title,
    required String company,
    required String period,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF00D4FF),
                ),
              ),
              Container(
                width: 2,
                height: 140,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ],
          ),
          const SizedBox(width: 30),
          Expanded(
            child: GlassContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    company,
                    style: const TextStyle(color: Color(0xFF00D4FF)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    period,
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    description,
                    style: const TextStyle(height: 1.8, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Experiência Profissional"),
          const SizedBox(height: 50),
          buildTimelineItem(
            title: "Desenvolvedor Mobile",
            company: "Freelancer",
            period: "2025 - Atual",
            description:
                "Desenvolvimento de aplicações Android nativas, Flutter, APIs REST e sistemas modernos.",
          ),
          buildTimelineItem(
            title: "Projetos Acadêmicos",
            company: "Engenharia de Software",
            period: "2023 - Atual",
            description:
                "Criação de sistemas web, mobile e backend utilizando Flutter, Spring Boot e React.",
          ),
        ],
      ),
    );
  }
}
