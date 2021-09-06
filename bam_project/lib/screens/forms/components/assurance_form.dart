import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/components/checkbox_field.dart';
import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssuranceForm extends StatefulWidget {
  const AssuranceForm({Key? key}) : super(key: key);

  @override
  _AssuranceFormState createState() => _AssuranceFormState();
}

final TextEditingController snOntController = TextEditingController();
final TextEditingController snStbController = TextEditingController();
final TextEditingController dcController = TextEditingController();

class _AssuranceFormState extends State<AssuranceForm> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            FormInputField(
              controller: snOntController,
              hintText: "SN ONT",
            ),
            FormInputField(
              controller: snStbController,
              hintText: "SN STB",
            ),
            CheckBoxField(
              text: "Dropcore 80 Meter",
              labelText: "Jml",
              controller: dcController,
            ),
            //  CheckBoxField(
            //   text: "Dropcore 50 Meter",
            //   labelText: "Jml",
            //   controller: null,
            // ),
            
          ],
        ),
      ),
    );
  }
}
