import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const SocialButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
          transform: Matrix4.identity()..translate(0.0, hover ? -4.0 : 0.0),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: hover
                ? const LinearGradient(
                    colors: [Color(0xFF7B61FF), Color(0xFF00D4FF)],
                  )
                : null,
            color: hover ? null : Colors.white.withValues(alpha: 0.05),
            border: Border.all(
              color: hover
                  ? Colors.transparent
                  : Colors.white.withValues(alpha: 0.1),
            ),
            boxShadow: hover
                ? [
                    BoxShadow(
                      color: const Color(0xFF7B61FF).withValues(alpha: 0.3),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    )
                  ]
                : [],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.icon, color: Colors.white, size: 18),
              const SizedBox(width: 10),
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}