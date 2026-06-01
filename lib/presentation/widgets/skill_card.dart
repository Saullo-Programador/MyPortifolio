import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String title;
  final String imagePath;

  const SkillCard({super.key, required this.title, required this.imagePath});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
        transform: Matrix4.identity()
          ..translate(0.0, isHover ? -6.0 : 0.0),
        width: 200,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: isHover ? const Color(0xFF181C27) : const Color(0xFF13161F),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isHover
                ? const Color(0xFF7B61FF).withValues(alpha: 0.5)
                : Colors.white.withValues(alpha: 0.07),
            width: isHover ? 1.5 : 1,
          ),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: const Color(0xFF7B61FF).withValues(alpha: 0.15),
                    blurRadius: 24,
                    spreadRadius: 0,
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: isHover
                    ? const Color(0xFF7B61FF).withValues(alpha: 0.1)
                    : Colors.transparent,
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => Icon(
                  Icons.code,
                  size: 40,
                  color: const Color(0xFF7B61FF).withValues(alpha: 0.6),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isHover ? Colors.white : Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}