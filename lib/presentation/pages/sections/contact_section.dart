import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/app_links.dart';
import '../../../core/utils/launch_utils.dart';
import '../../widgets/glass_container.dart';
import '../../widgets/section_title.dart';
import '../../widgets/social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: "Contato"),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Coluna esquerda: info + social
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Vamos construir\nalgo incrível juntos?",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Aberto a projetos freelance, oportunidades de trabalho e colaborações.",
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.8,
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        SocialButton(
                          title: "GitHub",
                          icon: FontAwesomeIcons.github,
                          onTap: () => LaunchUtils.open(AppLinks.github),
                        ),
                        SocialButton(
                          title: "LinkedIn",
                          icon: FontAwesomeIcons.linkedin,
                          onTap: () => LaunchUtils.open(AppLinks.linkedin),
                        ),
                        SocialButton(
                          title: "WhatsApp",
                          icon: FontAwesomeIcons.whatsapp,
                          onTap: () => LaunchUtils.open(AppLinks.whatsapp),
                        ),
                        SocialButton(
                          title: "Email",
                          icon: FontAwesomeIcons.envelope,
                          onTap: () => LaunchUtils.open(AppLinks.email),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    // Info cards
                    _ContactInfoRow(
                      icon: Icons.location_on_outlined,
                      text: "Brasil — Remoto",
                    ),
                    const SizedBox(height: 12),
                    _ContactInfoRow(
                      icon: Icons.access_time_rounded,
                      text: "Resposta em até 24h",
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40),
              // Coluna direita: formulário
              Expanded(
                flex: 3,
                child: GlassContainer(
                  showGlow: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Envie uma mensagem",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: _FormField(hint: "Seu nome", icon: Icons.person_outline),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: _FormField(hint: "Seu email", icon: Icons.mail_outline),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _FormField(hint: "Assunto", icon: Icons.subject_rounded),
                      const SizedBox(height: 16),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Descreva seu projeto ou ideia...",
                          hintStyle: TextStyle(
                            color: Colors.white.withValues(alpha: 0.3),
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: Colors.white.withValues(alpha: 0.04),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Colors.white.withValues(alpha: 0.08),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Colors.white.withValues(alpha: 0.08),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: const BorderSide(
                              color: Color(0xFF7B61FF),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.send_rounded, size: 18),
                          label: const Text("Enviar Mensagem"),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FormField extends StatelessWidget {
  final String hint;
  final IconData icon;
  const _FormField({required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white.withValues(alpha: 0.3),
          fontSize: 14,
        ),
        prefixIcon: Icon(icon, size: 18, color: Colors.white30),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.04),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.08)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Color(0xFF7B61FF), width: 1.5),
        ),
      ),
    );
  }
}

class _ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _ContactInfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: const Color(0xFF7B61FF)),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white.withValues(alpha: 0.55),
          ),
        ),
      ],
    );
  }
}