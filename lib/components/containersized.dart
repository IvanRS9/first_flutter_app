import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;

  const ContainerSized({
    required this.color,
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Contenedor sizedbox presionado'),
            duration: Duration(seconds: 1),
          ),
        )
      },
      onDoubleTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Contenedor sizedbox doble tap'),
            duration: Duration(seconds: 1),
          ),
        )
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(width: border),
          ),
          child: Center(
            child: Text(texto),
          ),
        ),
      ),
    );
  }
}
