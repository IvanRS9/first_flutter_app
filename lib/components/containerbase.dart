import 'package:flutter/material.dart';

class ContainerBase extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final String texto;

  const ContainerBase(
      {
      required this.color,
      required this.width,
      required this.height,
      required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color),
      child: Center(child: Text(texto),)
    );
  }
}
