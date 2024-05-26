import 'package:flutter/material.dart';

class ContainerRadius extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;

  const ContainerRadius(
      {required this.color,
      required this.texto,
      required this.width,
      required this.height,
      required this.border,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(width: border)
      ),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
