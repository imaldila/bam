import 'package:bam_project/pages/login/login_page.dart';
import 'package:bam_project/pages/main/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    
    if (firebaseUser != null) {
      return MainPage();
    }
    return LoginPage();
  }
}
