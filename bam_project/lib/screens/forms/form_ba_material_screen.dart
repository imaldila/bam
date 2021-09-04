import 'package:bam_project/screens/forms/components/body_material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FormBa2 extends StatelessWidget {
  const FormBa2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body2(),
    );
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
        "Input BA | Material",
        style: GoogleFonts.montserrat(
            color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        Image(
            width: 63,
            height: 32,
            image: AssetImage("assets/images/logo_ta.png"))
      ],
    );
  }
}
