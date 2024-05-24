import 'package:flutter/material.dart';

class ContainerRadiusAll extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;
  final double radiusleft;
  final double radiusright;

  const ContainerRadiusAll({
    required this.color,
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
    required this.radiusleft,
    required this.radiusright,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: border),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radiusleft),
              bottomRight: Radius.circular(radiusright))),
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
