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
final TextEditingController pc80Controller = TextEditingController();
final TextEditingController pc50Controller = TextEditingController();

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
              hintText: "SN ONT",
            ),
            FormInputField(
              maxLenght: 33,
              controller: snStbController,
              hintText: "SN STB",
            ),
            CheckBoxField(
              text: "Preconnector 80 Meter",
              labelText: "Jml",
              controller: pc80Controller,
            ),
            CheckBoxField(
              text: "Preconnector 50 Meter",
              labelText: "Jml",
              controller: pc50Controller,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(
                kDefaultPadding,
                kDefaultPadding,
                kDefaultPadding,
                0,
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Drop Core"),
                  Spacer(),
                  SizedBox(
                    width: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      readOnly: (isChecked = isChecked) ? false : true,
                      maxLength: 3,
                      decoration: InputDecoration(
                        counterText: '',
                      ),
                    ),
                  ),
                  Text("Meter")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
