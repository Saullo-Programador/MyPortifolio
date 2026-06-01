import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      decoration: BoxDecoration(
        color: const Color(0xFF080A11),
        border: Border(
          top: BorderSide(color: Colors.white.withValues(alpha: 0.06)),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Brand
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFF7B61FF), Color(0xFF00D4FF)],
                    ).createShader(bounds),
                    child: const Text(
                      "Saullo Paulo",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Android • Flutter • Backend",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.4),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              // Links
              Row(
                children: [
                  _FooterLink(label: "Sobre"),
                  _FooterLink(label: "Skills"),
                  _FooterLink(label: "Projetos"),
                  _FooterLink(label: "Contato"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Divider(color: Colors.white.withValues(alpha: 0.06)),
          const SizedBox(height: 20),
          Text(
            "© 2026 Saullo Paulo — Todos os direitos reservados.",
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.3),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;
  const _FooterLink({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.45),
          fontSize: 14,
        ),
      ),
    );
  }
}