import 'package:flutter/material.dart';

class ContainerGradient extends StatelessWidget {
  final String texto;
  final double width;
  final double height;
  final double border;
  final double radius;
  final Color firstColor;
  final Color secondColor;

  const ContainerGradient({
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
    required this.radius,
    required this.firstColor,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(width: border),
          gradient: RadialGradient(
              center: Alignment.center,
              radius: radius,
              colors: [firstColor, secondColor])),
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
