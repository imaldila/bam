import 'package:bam_project/constants.dart';
import 'package:bam_project/pages/main/components/header_with_search_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: [Image.asset("assets\images\logo_ccan.png")],
            ),
          )
        ],
      ),
    );
  }
}
