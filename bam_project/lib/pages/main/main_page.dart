import 'package:bam_project/constants.dart';
import 'package:bam_project/model/firebase/auth_services.dart';
import 'package:bam_project/pages/main/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryLightColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('bam_project\assets\icons\ic_menu.svg')
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('bam_project\assets\icons\ic_search.svg')
        )
      ],
    );
  }
}


// ElevatedButton(
//                   onPressed: () {
//                     context.read<AuthServices>().signOut();
//                   },
//                   child: Text("Sign Out")),