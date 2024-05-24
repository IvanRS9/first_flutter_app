import 'package:flutter/material.dart';

class ContainerBorder extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double border;
  final String texto;

  const ContainerBorder(
      {
      required this.color,
      required this.width,
      required this.height,
      required this.border,
      required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color, border: Border.all(width: border)),
      child: Center(child: Text(texto),)
    );
  }
}
