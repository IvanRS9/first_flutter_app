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
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                "Contenedor con imagen en dialog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              content: Image.asset(img),
              backgroundColor: color,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      "Cerrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                    )
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: border,
          ),
        ),
        child: Image.asset(img),
      ),
    );
  }
}