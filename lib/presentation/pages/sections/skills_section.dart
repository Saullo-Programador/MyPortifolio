import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../widgets/section_title.dart';
import '../../widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {
        "name": "Flutter",
        "image": "../../../assets/skills/flutter.png",
      },
      {
        "name": "Kotlin",
        "image": "../../../assets/skills/kotlin.png",
      },
      {
        "name": "Java",
        "image": "../../../assets/skills/java.png",
      },
      {
        "name": "Android",
        "image": "../../../assets/skills/android.png",
      },
      {
        "name": "Jetpack Compose",
        "image": "../../../assets/skills/compose.png",
      },
      {
        "name": "React",
        "image": "../../../assets/skills/react.png",
      },
      {
        "name": "TypeScript",
        "image": "../../../assets/skills/typescript.png",
      },
      {
        "name": "Node.js",
        "image": "../../../assets/skills/nodejs.png",
      },
      {
        "name": "Spring Boot",
        "image": "../../../assets/skills/spring-boot.png",
      },
      {
        "name": "MySQL",
        "image": "../../../assets/skills/mysql.png",
      },
      {
        "name": "Banco de Dados",
        "image": "../../../assets/skills/banco-dados.png",
      },
      {
        "name": "Firebase",
        "image": "../../../assets/skills/firebase.png",
      },
      {
        "name": "Docker",
        "image": "../../../assets/skills/docker.png",
      },
      {
        "name": "AWS",
        "image": "../../../assets/skills/aws.png",
      },
      {
        "name": "Linux",
        "image": "../../../assets/skills/linux.png",
      },
      {
        "name": "ChatBot",
        "image": "../../../assets/skills/chatbot.png",
      },
      {
        "name": "GitHub",
        "image": "../../../assets/skills/github.png",
      },
      
    ];

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: "Skills & Technologies",
          ),
          const SizedBox(height: 40),
          CarouselSlider(
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              viewportFraction: 0.25,
            ),
            items: skills.map((skill) {
              return SkillCard(
                title: skill["name"]!,
                imagePath: skill["image"]!,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}