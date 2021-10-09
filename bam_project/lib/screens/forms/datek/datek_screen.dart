import 'package:bam_project/components/text_field_name.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/datek/components/signature_form.dart';
import 'package:bam_project/screens/home/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'components/datek_form.dart';

class DatekScreen extends StatefulWidget {
  const DatekScreen({Key? key}) : super(key: key);

  @override
  _DatekScreenState createState() => _DatekScreenState();
}

class _DatekScreenState extends State<DatekScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  final ticketController = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference baid = firestore.collection('baid');

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding),
                DatekForm(),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Tanda Tangan Pelanggan"),
                SignatureForm(),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Tanda Tangan Teknisi"),
                SignatureForm(),
                const SizedBox(height: defaultPadding),
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Confirm"),
                                content: const Text("Are You Sure ?"),
                                elevation: 8,
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // baid.add({
                                      //   'ticket': ticketController.text
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    },
                                    child: const Text('OK'),
                                  ),
                                  // Lottie.asset('assets/lotties/check.json'),
                                  // Text("Data has been Saved !!",
                                  //     style: poppinsStyle(
                                  //         fontWeight: FontWeight.bold))
                                ],
                              )),
                      child: Text(
                        "Submit",
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
        "Input BA | Datek",
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
