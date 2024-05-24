import 'package:flutter/material.dart';

class ContainerLinealG extends StatelessWidget {
  final String texto;
  final double width;
  final double height;
  final double border;
  final List<Color> color;
  final double end1;
  final double end2;

  const ContainerLinealG({
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
    required this.color,
    required this.end1,
    required this.end2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: border),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(end1, end2),
          colors: color,
        )
      ),
      child: Center(
        child: Text(texto),
      ),
    );
  }
}