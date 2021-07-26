import 'package:bam_project/components/rounded_button.dart';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets\images\logo_ccan.png')),
            Row(
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
            ),
            RoundedButton(
              text: "Login",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
