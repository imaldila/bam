import 'package:bam_project/models/menu.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.menu, required this.press})
      : super(key: key);

  final Menu menu;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
    );
  }
}
