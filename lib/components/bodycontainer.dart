import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final List<Widget> content;

  const BodyContainer(
      {required this.firstColor,
      required this.secondColor,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [firstColor, secondColor])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: content
              .map((widget) => Expanded(child: Center(child: widget)))
              .toList(),
        ),
      ),
    );
  }
}
