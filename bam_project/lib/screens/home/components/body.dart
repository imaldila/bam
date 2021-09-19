import 'package:bam_project/components/new_button.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/customers/customer_screen.dart';
import 'package:bam_project/screens/forms/form_ba_customer_screen.dart';
import 'package:bam_project/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';

import 'home_body.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Color(0xFFEAEAEA),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: headerHeight,
                child: HomeHeader(),
              ),
              Positioned(
                top: headerHeight,
                left: 0,
                right: 0,
                height: size.height * 0.72,
                child: HomeBody(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: NewButton(
                  text: "Create BA",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormCustomer()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
