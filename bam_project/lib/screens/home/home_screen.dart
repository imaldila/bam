import 'package:bam_project/constants.dart';
import 'package:bam_project/controllers/firebase/auth_services.dart';
import 'package:bam_project/models/menu.dart';
import 'package:bam_project/screens/details/detail_screen.dart';

import 'package:bam_project/screens/home/components/body.dart';
import 'package:bam_project/screens/home/components/header.dart';
import 'package:bam_project/screens/home/components/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA),
          child: Column(
            children: [
              HomeHeader(),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultPadding * 1.5),
                      bottomRight: Radius.circular(kDefaultPadding * 1.5),
                    ),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              color: Colors.black,
                            )
                          ]);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: bottomBarHeight,
              )
            ],
          ),
        ),
      ),
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