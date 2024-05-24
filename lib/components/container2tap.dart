import 'package:flutter/material.dart';

class Container2tap extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;

  const Container2tap({
    required this.color,
    required this.border,
    required this.texto,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Contenedor Double Tap")));
      },
      child: Container(
        width: width,
        height: height,
        decoration:
            BoxDecoration(color: color, border: Border.all(width: border)),
        child: Center(
          child: Text(texto),
        ),
      ),
    );
  }
}
