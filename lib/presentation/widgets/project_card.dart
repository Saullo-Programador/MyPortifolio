import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final List<String> techs;
  final String? githubUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.techs,
    this.githubUrl,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOut,
        transform: Matrix4.identity()..translate(0.0, hover ? -6.0 : 0.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: hover ? const Color(0xFF181C27) : const Color(0xFF13161F),
          border: Border.all(
            color: hover
                ? const Color(0xFF7B61FF).withValues(alpha: 0.4)
                : Colors.white.withValues(alpha: 0.07),
            width: hover ? 1.5 : 1,
          ),
          boxShadow: hover
              ? [
                  BoxShadow(
                    color: const Color(0xFF7B61FF).withValues(alpha: 0.12),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // <-- chave: altura pelo conteúdo
          children: [
            // Header com ícone
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF7B61FF).withValues(alpha: 0.14),
                    const Color(0xFF00D4FF).withValues(alpha: 0.07),
                  ],
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.code_rounded,
                  size: 36,
                  color: const Color(0xFF7B61FF).withValues(alpha: 0.55),
                ),
              ),
            ),
            // Conteúdo
            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withValues(alpha: 0.5),
                      height: 1.65,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: widget.techs.map((tech) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 11,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF7B61FF).withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFF7B61FF).withValues(alpha: 0.28),
                          ),
                        ),
                        child: Text(
                          tech,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9E8FFF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  // Botão ver projeto
                  Row(
                    children: [
                      Icon(
                        Icons.open_in_new_rounded,
                        size: 14,
                        color: const Color(0xFF7B61FF).withValues(alpha: 0.7),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "Ver projeto",
                        style: TextStyle(
                          fontSize: 13,
                          color: const Color(0xFF7B61FF).withValues(alpha: 0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}