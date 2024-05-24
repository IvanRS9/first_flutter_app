import 'package:flutter/material.dart';

class ContainerShadow extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;
  final Color colorshadow;
  final double off1;
  final double off2;
  final double blurradius;

  const ContainerShadow({
    required this.color,
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
    required this.colorshadow,
    required this.off1,
    required this.off2,
    required this.blurradius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: border),
          boxShadow: [
            BoxShadow(
              color: colorshadow,
              offset: Offset(off1, off2),
              blurRadius: blurradius,
            )
          ]),
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
