import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;
  final double border;

  const ContainerButton({
    required this.color,
    required this.text,
    required this.width,
    required this.height,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Button pressed'),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: border)
        ),
        child: Center(child: Text(text),),
      ),

    );
  }
}
