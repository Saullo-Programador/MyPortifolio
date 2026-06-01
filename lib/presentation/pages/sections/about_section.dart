import 'package:flutter/material.dart';
import '../../widgets/glass_container.dart';
import '../../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Sobre Mim"),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: GlassContainer(
                  showGlow: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Olá! Sou o Saullo 👋",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Desenvolvedor focado em criar experiências mobile excepcionais. "
                        "Especializado em Android Nativo, Flutter, APIs REST, Spring Boot, "
                        "Firebase e sistemas modernos.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Transformo ideias em aplicações robustas e elegantes, "
                        "sempre com foco na qualidade de código e experiência do usuário.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    _AboutCard(
                      icon: Icons.phone_android_rounded,
                      title: "Mobile First",
                      subtitle: "Android & Flutter",
                      color: const Color(0xFF7B61FF),
                    ),
                    const SizedBox(height: 16),
                    _AboutCard(
                      icon: Icons.cloud_rounded,
                      title: "Backend",
                      subtitle: "Spring Boot & Node.js",
                      color: const Color(0xFF00D4FF),
                    ),
                    const SizedBox(height: 16),
                    _AboutCard(
                      icon: Icons.architecture_rounded,
                      title: "Arquitetura",
                      subtitle: "Clean & MVVM",
                      color: const Color(0xFF9B7BFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AboutCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const _AboutCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.18)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withValues(alpha: 0.45),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}