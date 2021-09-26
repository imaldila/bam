import 'package:bam_project/components/text_field_name.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/components/checkbox_form.dart';
import 'package:bam_project/screens/forms/components/checkbox_inc_dec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/ont_form.dart';
import 'components/sdwan_form.dart';
import 'components/stb_form.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({Key? key}) : super(key: key);

  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

final TextEditingController pc80Controller = TextEditingController();
final TextEditingController pc50Controller = TextEditingController();
final TextEditingController dcController = TextEditingController();

@override
void dispose() {
  pc80Controller.dispose();
  pc50Controller.dispose();
  dcController.dispose();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: ListView(
          // scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "SN ONT"),
                OntForm(),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "SN STB"),
                StbForm(),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "SN SDWAN"),
                SdWanForm(),
                const SizedBox(height: defaultPadding),
                CheckBoxIncDec(
                  text: "DC 80",
                  labelText: "jml",
                  controller: dcController,
                ),
                CheckBoxIncDec(
                  text: "DC 80",
                  labelText: "jml",
                  controller: dcController,
                ),
                CheckBoxIncDec(
                  text: "DC 80",
                  labelText: "jml",
                  controller: dcController,
                ),
                CheckBoxForm(
                  controller: dcController,
                  text: "Drop Core",
                  lastText: "Meter",
                ),
                CheckBoxForm(
                  controller: dcController,
                  text: "Drop Core",
                  lastText: "Meter",
                ),
              ],
            )
          ],
        ),
      ),
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
