import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/home/home_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saullo Portfolio',
      theme: AppTheme.darkTheme,
      home: const HomePage(),
    );
  }
}
