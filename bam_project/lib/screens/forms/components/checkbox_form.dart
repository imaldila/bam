import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheckBoxForm extends StatefulWidget {
  final text;
  final lastText;
  final controller;
  const CheckBoxForm({
    Key? key,
    this.text,
    this.lastText,
    this.controller,
  }) : super(key: key);

  @override
  _CheckBoxFormState createState() => _CheckBoxFormState();
}

class _CheckBoxFormState extends State<CheckBoxForm> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        defaultPadding,
        defaultPadding,
        defaultPadding * 1.2,
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
              }),
          Text(
            widget.text,
            style: poppinsStyle(),
          ),
          Spacer(),
          SizedBox(
            width: 45,
            child: TextField(
              style: poppinsStyle(),
              controller: widget.controller,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              readOnly: (isChecked = isChecked) ? false : true,
              maxLength: 3,
              decoration: InputDecoration(
                counterText: '',
              ),
            ),
          ),
          Text(
            widget.lastText,
            style: poppinsStyle(),
          )
        ],
      ),
    );
  }
}
