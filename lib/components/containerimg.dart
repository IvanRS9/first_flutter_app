import 'package:flutter/material.dart';

class ContainerImg extends StatelessWidget {
  final double width;
  final double height;
  final double border;
  final String img;

  const ContainerImg({
    required this.width,
    required this.height,
    required this.border,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: border),
        image: DecorationImage(
          image: AssetImage(img),
        )
      ),
    );
  }
}