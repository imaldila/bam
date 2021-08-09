import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/home/components/header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //HeaderWithSearchBox(size: size),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 0,
              height: headerHeight,
              child: HomeHeader()),

          Container(
            width: size.width * 0.4,
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
