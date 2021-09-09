import 'package:bam_project/components/rounded_button.dart';
import 'package:bam_project/components/rounded_input_field.dart';
import 'package:bam_project/components/rounded_password_field.dart';
import 'package:bam_project/controllers/firebase/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/logo_login.dart';
import 'components/text_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
              LogoLogin(),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextLogin(),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedInputField(
                controller: emailController,
                hintText: "NIK",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                controller: passwordController,
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                onPressed: () {
                  context.read<AuthServices>().signIn(
                      email: emailController.text,
                      password: passwordController.text);
                },
                text: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
