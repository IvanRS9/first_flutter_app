import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String texto;
  final Color color;
  final double width;
  final double height;
  final double border;

  const ContainerButton({
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
            content: Text('Contenedor presionado'),
            duration: Duration(seconds: 1),
          ),
        )
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: border)
        ),
        child: Center(child: Text(texto),),
      ),

    );
  }
}
