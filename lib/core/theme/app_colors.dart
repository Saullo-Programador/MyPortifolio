import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0A0C14);
  static const surface = Color(0xFF0F1219);
  static const card = Color(0xFF13161F);
  static const cardHover = Color(0xFF181C27);
  static const primary = Color(0xFF7B61FF);
  static const primaryGlow = Color(0x337B61FF);
  static const secondary = Color(0xFF00D4FF);
  static const secondaryGlow = Color(0x2200D4FF);
  static const gradient1 = Color(0xFF7B61FF);
  static const gradient2 = Color(0xFF00D4FF);
  static const white = Colors.white;
  static const white70 = Colors.white70;
  static const white30 = Colors.white30;
  static const border = Color(0x14FFFFFF);
  static const borderHover = Color(0x22FFFFFF);

  static const primaryGradient = LinearGradient(
    colors: [gradient1, gradient2],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const heroGradient = LinearGradient(
    colors: [Color(0xFF0A0C14), Color(0xFF0D101B), Color(0xFF111520)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}