import 'package:flutter/material.dart';

class ContainerBorderLT extends StatelessWidget {
  final String texto;
  final Color color;
  final double width;
  final double height;
  final double borderleft;
  final double bordertop;

  const ContainerBorderLT({
    required this.texto,
    required this.color,
    required this.width,
    required this.height,
    required this.borderleft,
    required this.bordertop,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          border: Border(
            left: BorderSide(width: borderleft, color: Colors.black),
            top: BorderSide(width: bordertop, color: Colors.black),
          )),
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
