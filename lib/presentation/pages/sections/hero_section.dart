import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_links.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/launch_utils.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 860),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0A0C14), Color(0xFF0D101B), Color(0xFF0F1320)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          // Orbs decorativos de fundo
          Positioned(
            top: -100,
            right: 100,
            child: _GlowOrb(color: const Color(0xFF7B61FF), size: 400),
          ),
          Positioned(
            bottom: 0,
            left: -80,
            child: _GlowOrb(color: const Color(0xFF00D4FF), size: 300),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Badge "disponível"
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00D4FF).withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: const Color(0xFF00D4FF).withValues(alpha: 0.2),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFF00D4FF),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Disponível para projetos",
                            style: TextStyle(
                              color: Color(0xFF00D4FF),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),
                    Text(
                      AppStrings.name,
                      style: const TextStyle(
                        fontSize: 68,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                        height: 1.05,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xFF7B61FF), Color(0xFF00D4FF)],
                      ).createShader(bounds),
                      child: const Text(
                        AppStrings.role,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      child: Row(
                        children: [
                          Text(
                            "> ",
                            style: TextStyle(
                              color: const Color(0xFF7B61FF).withValues(alpha: 0.6),
                              fontSize: 20,
                              fontFamily: 'monospace',
                            ),
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Flutter Developer",
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white60,
                                  fontFamily: 'monospace',
                                ),
                                speed: const Duration(milliseconds: 70),
                              ),
                              TypewriterAnimatedText(
                                "Android Native Developer",
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white60,
                                  fontFamily: 'monospace',
                                ),
                                speed: const Duration(milliseconds: 70),
                              ),
                              TypewriterAnimatedText(
                                "Backend Developer",
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white60,
                                  fontFamily: 'monospace',
                                ),
                                speed: const Duration(milliseconds: 70),
                              ),
                            ],
                            repeatForever: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      AppStrings.description,
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.8,
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                    const SizedBox(height: 44),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => LaunchUtils.open(AppLinks.github),
                          icon: const Icon(Icons.code, size: 18),
                          label: const Text("GitHub"),
                        ),
                        OutlinedButton(
                          onPressed: () => LaunchUtils.open(AppLinks.linkedin),
                          child: const Text("LinkedIn"),
                        ),
                        OutlinedButton(
                          onPressed: () => LaunchUtils.open(AppLinks.whatsapp),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: const Color(0xFF00D4FF).withValues(alpha: 0.4),
                            ),
                            foregroundColor: const Color(0xFF00D4FF),
                          ),
                          child: const Text("Contato"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    // Stats rápidos
                    Row(
                      children: [
                        _StatItem(number: "10+", label: "Projetos"),
                        _Divider(),
                        _StatItem(number: "2+", label: "Anos de experiência"),
                        _Divider(),
                        _StatItem(number: "5+", label: "Tecnologias"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 60),
              Expanded(
                flex: 4,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Anel decorativo externo
                      Container(
                        width: 380,
                        height: 380,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF7B61FF).withValues(alpha: 0.1),
                            width: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              const Color(0xFF7B61FF).withValues(alpha: 0.15),
                              Colors.transparent,
                            ],
                          ),
                          border: Border.all(
                            color: const Color(0xFF7B61FF).withValues(alpha: 0.2),
                            width: 1.5,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/avatar.png",
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Icon(
                              Icons.person,
                              size: 100,
                              color: const Color(0xFF7B61FF).withValues(alpha: 0.4),
                            ),
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

class _GlowOrb extends StatelessWidget {
  final Color color;
  final double size;
  const _GlowOrb({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [color.withValues(alpha: 0.06), Colors.transparent],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String number;
  final String label;
  const _StatItem({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Color(0xFF7B61FF), Color(0xFF00D4FF)],
          ).createShader(bounds),
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: Colors.white.withValues(alpha: 0.45),
          ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      color: Colors.white.withValues(alpha: 0.08),
    );
  }
}