import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:flutter/material.dart';

class AssuranceForm extends StatefulWidget {
  const AssuranceForm({Key? key}) : super(key: key);

  @override
  _AssuranceFormState createState() => _AssuranceFormState();
}

final TextEditingController snOntController = TextEditingController();
final TextEditingController snStbController = TextEditingController();

class _AssuranceFormState extends State<AssuranceForm> {
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
          ],
        ),
      ),
    );
  }
}
