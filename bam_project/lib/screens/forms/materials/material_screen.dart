import 'package:bam_project/components/text_field_name.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/models/Customer.dart';
import 'package:bam_project/screens/forms/components/checkbox_form.dart';
import 'package:bam_project/screens/forms/components/checkbox_inc_dec.dart';
import 'package:bam_project/screens/forms/datek/datek_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/ont_form.dart';
import 'components/sdwan_form.dart';
import 'components/stb_form.dart';

class MaterialScreen extends StatefulWidget {
  final Customer? customer;
  const MaterialScreen({Key? key, this.customer}) : super(key: key);

  @override
  _MaterialScreenState createState() => _MaterialScreenState();
}

final TextEditingController pc80Controller = TextEditingController();
final TextEditingController pc50Controller = TextEditingController();
final TextEditingController dcController = TextEditingController();
final TextEditingController socController = TextEditingController();
final TextEditingController sclampController = TextEditingController();
final TextEditingController clampHookController = TextEditingController();
final TextEditingController rosetController = TextEditingController();
final TextEditingController trayCableController = TextEditingController();
final TextEditingController patchCoreController = TextEditingController();
final TextEditingController kabelUtpController = TextEditingController();
final TextEditingController rj45Controller = TextEditingController();

@override
void dispose() {
  pc80Controller.dispose();
  pc50Controller.dispose();
  dcController.dispose();
  socController.dispose();
  sclampController.dispose();
  clampHookController.dispose();
  rosetController.dispose();
  trayCableController.dispose();
  patchCoreController.dispose();
  kabelUtpController.dispose();
  rj45Controller.dispose();
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
                  text: "Preconn 80",
                  labelText: "jml",
                  controller: pc80Controller,
                ),
                CheckBoxIncDec(
                  text: "Preconn 50",
                  labelText: "jml",
                  controller: pc50Controller,
                ),
                CheckBoxForm(
                  controller: dcController,
                  text: "Drop Core",
                  lastText: "Meter",
                ),
                CheckBoxIncDec(
                  text: "SOC",
                  labelText: "Pcs",
                  controller: socController,
                ),
                CheckBoxIncDec(
                  text: "S-Clamp",
                  labelText: "Pcs",
                  controller: sclampController,
                ),
                CheckBoxIncDec(
                  text: "Clamp Hook",
                  labelText: "Pcs",
                  controller: clampHookController,
                ),
                CheckBoxIncDec(
                  text: "Roset",
                  labelText: "Pcs",
                  controller: rosetController,
                ),
                CheckBoxIncDec(
                  text: "Tray Cable",
                  labelText: "Pcs",
                  controller: trayCableController,
                ),
                CheckBoxIncDec(
                  text: "Patch Core",
                  labelText: "Pcs",
                  controller: patchCoreController,
                ),
                CheckBoxIncDec(
                  text: "Kabel UTP",
                  labelText: "Pcs",
                  controller: kabelUtpController,
                ),
                CheckBoxIncDec(
                  text: "RJ 45",
                  labelText: "Pcs",
                  controller: rj45Controller,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DatekScreen()));
                      },
                      child: Text(
                        "Next",
                        style: poppinsStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
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
