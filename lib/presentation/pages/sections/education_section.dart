import 'package:flutter/material.dart';
import '../../widgets/glass_container.dart';
import '../../widgets/section_title.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});
  Widget educationCard({
    required String title,
    required String institution,
    required String period,
  }) {
    return GlassContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(institution, style: const TextStyle(color: Color(0xFF00D4FF), fontSize: 22)),
          const SizedBox(height: 10),
          Text(period, style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 22)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Formação Acadêmica"),
          const SizedBox(height: 50),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2.5,
            children: [
              educationCard(
                title: "Engenharia de Software",
                institution: "Anhanguera",
                period: "2024 - Atual",
              ),
              educationCard(
                title: "Técnico em Informática",
                institution: "Ensino Técnico",
                period: "Concluído",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
