import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      //height: 140,
      child: Image(
        image: AssetImage('assets/images/logo_ccan.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
