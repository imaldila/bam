import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  const TextLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("BGES",
            style: TextStyle(
                fontFamily: "ChunkFive",
                fontSize: 36,
                shadows: [
                  BoxShadow(
                      blurRadius: 4,
                      color: Colors.black54,
                      spreadRadius: 4)
                ])),
        Text(".",
            style: TextStyle(
                fontFamily: "ChunkFive",
                fontSize: 36,
                color: Colors.red)),
      ],
    );
  }
}