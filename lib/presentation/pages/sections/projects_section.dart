import 'package:flutter/material.dart';
import '../../widgets/project_card.dart';
import '../../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  static const _projects = [
    (
      title: "Sistema Gerenciador de Documentos",
      description: "Sistema completo para gerenciamento e organização de documentos com autenticação JWT.",
      techs: ["Flutter", "Spring Boot", "JWT", "MySQL"],
    ),
    (
      title: "Chatbot WhatsApp",
      description: "Sistema de automação e atendimento inteligente integrado ao WhatsApp.",
      techs: ["Node.js", "TypeScript", "REST API"],
    ),
    (
      title: "App Campeonato e Bolão",
      description: "Aplicação mobile completa para gerenciamento de campeonatos e bolões esportivos.",
      techs: ["React Native", "TypeScript", "API Football"],
    ),
    (
      title: "Controle de Estoque",
      description: "Aplicativo Android com notificações inteligentes e monitoramento em tempo real.",
      techs: ["Kotlin", "Room", "WorkManager"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Projetos"),
          const SizedBox(height: 40),
          // Duas colunas com altura dinâmica via IntrinsicHeight por linha
          for (int i = 0; i < _projects.length; i += 2)
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ProjectCard(
                        title: _projects[i].title,
                        description: _projects[i].description,
                        techs: _projects[i].techs,
                      ),
                    ),
                    if (i + 1 < _projects.length) ...[
                      const SizedBox(width: 24),
                      Expanded(
                        child: ProjectCard(
                          title: _projects[i + 1].title,
                          description: _projects[i + 1].description,
                          techs: _projects[i + 1].techs,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}