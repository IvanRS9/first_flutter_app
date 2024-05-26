import 'package:flutter/material.dart';

class BodyContainer extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final List<Widget> content;

  const BodyContainer(
      {required this.firstColor,
      required this.secondColor,
      required this.content,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [firstColor, secondColor])),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: GridView.count(
            crossAxisCount: 3, // 3 columnas
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1, // Proporción de aspecto 1:1
            children: content.map((widget) => Center(child: SizedBox(child: widget))).toList(),
          ),
        ),
      ),
    );
  }
}
