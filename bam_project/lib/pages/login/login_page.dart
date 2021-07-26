import 'package:bam_project/components/rounded_button.dart';
import 'package:bam_project/components/rounded_input_field.dart';
import 'package:bam_project/components/rounded_password_field.dart';
import 'package:bam_project/components/textfield_container.dart';
import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.35,
                //height: 140,
                child: Image(
                  image: AssetImage('assets/images/logo_ccan.png'),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
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
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedInputField(
                hintText: "NIK",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                press: () {},
                text: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
