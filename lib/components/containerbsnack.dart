import 'package:flutter/material.dart';

class ContainerBSnack extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  final double border;

  const ContainerBSnack({
    required this.color,
    required this.text,
    required this.width,
    required this.height,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Mensaje de SnackBar - Contenedor Snack")));
      },
      child: Container(
        width: width,
        height: height,
        decoration:
            BoxDecoration(color: color, border: Border.all(width: border)),
        child: Center(child: Text(text)),
      ),
    );
  }
}
