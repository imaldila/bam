import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/body_customer.dart';

class FormCustomer extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyCustomer(
        formKey: _formKey,
      ),
      
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: SvgPicture.asset("assets/icons/ic_back.svg"),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      "Input BA | Customer",
      style: GoogleFonts.montserrat(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: [
      Image(
          width: 63, height: 32, image: AssetImage("assets/images/logo_ta.png"))
    ],
  );
}
