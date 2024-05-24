import 'package:flutter/material.dart';

class ContainerShowImg extends StatelessWidget {
  final String img;
  final String texto;
  final double width;
  final double height;
  final double border;
  final Color color;

  const ContainerShowImg({
    required this.border,
    required this.color,
    required this.img,
    required this.texto,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AlertDialog(
          title: Text('Dialog del contenedor'),
          content: const SingleChildScrollView(
            child: Text('Este es el texto del dialog'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]
        );
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(width: border)
        ),
        child: Center(
          child: Text(texto)
        ),
      )
    );
  }
}