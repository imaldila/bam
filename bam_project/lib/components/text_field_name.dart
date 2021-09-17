import 'package:flutter/material.dart';

import '../constants.dart';

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: poppinsStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
}
