import 'package:flutter/material.dart';

class ContainerBSnack extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;

  const ContainerBSnack({
    required this.color,
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Mensaje de SnackBar - Contenedor Snack"),duration: Duration(seconds: 1),));
      },
      child: Container(
        width: width,
        height: height,
        decoration:
            BoxDecoration(color: color, border: Border.all(width: border)),
        child: Center(child: Text(texto)),
      ),
    );
  }
}
