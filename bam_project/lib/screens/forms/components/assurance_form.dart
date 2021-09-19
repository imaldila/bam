import 'package:bam_project/screens/forms/components/checkbox_form.dart';
import 'package:bam_project/screens/forms/components/checkbox_inc_dec.dart';
import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:flutter/material.dart';


class AssuranceForm extends StatefulWidget {
  const AssuranceForm({Key? key}) : super(key: key);

  @override
  _AssuranceFormState createState() => _AssuranceFormState();
}

final TextEditingController snOntController = TextEditingController();
final TextEditingController snStbController = TextEditingController();
final TextEditingController pc80Controller = TextEditingController();
final TextEditingController pc50Controller = TextEditingController();
final TextEditingController dcController = TextEditingController();

@override
void dispose() {
  snOntController.dispose();
  snStbController.dispose();
  pc80Controller.dispose();
  pc50Controller.dispose();
  dcController.dispose();
}

class _AssuranceFormState extends State<AssuranceForm> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            FormInputField(
              maxLenght: 20,
              controller: snOntController,
              // hintText: "SN ONT",
              textCapitalization: TextCapitalization.characters,
              labelText: "SN ONT",
              // requiredValidator: RequiredValidator(errorText: ""),
            ),
            FormInputField(
              maxLenght: 33,
              controller: snStbController,
              // hintText: "SN STB",
              textCapitalization: TextCapitalization.characters,
              labelText: "SN STB",
              // requiredValidator: (RequiredValidator(errorText: "")),
            ),
            CheckBoxIncDec(
              text: "Preconnector 80 Meter",
              labelText: "Jml",
              controller: pc80Controller,
            ),
            CheckBoxIncDec(
              text: "Preconnector 50 Meter",
              labelText: "Jml",
              controller: pc50Controller,
            ),
            CheckBoxForm(
              controller: dcController,
              text: "Drop Core",
              lastText: "Meter",
            ),
          ],
        ),
      ),
    );
  }
}
