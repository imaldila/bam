
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     backgroundColor: kPrimaryLightColor,
  //     elevation: 0,
  //     leading: IconButton(
  //       onPressed: () {},
  //       icon: SvgPicture.asset('assets/icons/ic_menu.svg'),
  //     ),
  //     actions: [
  //       IconButton(
  //         onPressed: () {},
  //         icon: SvgPicture.asset('assets/icons/ic_search.svg'),
  //       )
  //     ],
  //   );
  // }
}




// ElevatedButton(
//                   onPressed: () {
//                     context.read<AuthServices>().signOut();
//                   },
//                   child: Text("Sign Out")),