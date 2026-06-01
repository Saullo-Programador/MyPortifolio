import 'package:flutter/material.dart';

class AnimatedHover extends StatefulWidget {
  final Widget child;
  const AnimatedHover({super.key, required this.child});
  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hover = true;
        });
      },
      onExit: (_) {
        setState(() {
          hover = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        transform: Matrix4.identity()..translate(0.0, hover ? -8 : 0),
        child: widget.child,
      ),
    );
  }
}
