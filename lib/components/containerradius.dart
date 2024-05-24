import 'package:flutter/material.dart';

class ContainerRadius extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;
  final double radius;

  const ContainerRadius(
      {required this.color,
      required this.texto,
      required this.width,
      required this.height,
      required this.border,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: border),
          borderRadius: BorderRadius.circular(radius)),
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
