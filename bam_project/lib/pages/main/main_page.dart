import 'package:bam_project/model/firebase/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HomePage"),
              ElevatedButton(onPressed: () {
                context.read<AuthServices>().signOut();
              }, child: Text("Sign Out"))
            ],
          ),
          
        ),
      ),
    );
  }
}
