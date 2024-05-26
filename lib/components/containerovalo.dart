import 'package:flutter/material.dart';

class ContainerOvalo extends StatelessWidget{
  final Color color;
  final String texto;
  final double width;
  final double height;
  final double border;

  const ContainerOvalo({
    required this.color,
    required this.texto,
    required this.width,
    required this.height,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipOval(
        child: Stack(
          children: [
            Center(
              child: Text(
                texto,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}