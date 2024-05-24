import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  final Color color;

  const ContainerItem({required this.color});

  @override

  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}