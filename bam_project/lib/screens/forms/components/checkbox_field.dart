import '../../../constants.dart';
import 'package:flutter/material.dart';

class CheckBoxField extends StatefulWidget {
  final text;
  final lastText;
  final controller;

  const CheckBoxField({Key? key, this.text, this.lastText, this.controller})
      : super(key: key);
  @override
  _CheckBoxFieldState createState() => _CheckBoxFieldState();
}

class _CheckBoxFieldState extends State<CheckBoxField> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        kDefaultPadding + 20,
        kDefaultPadding,
        kDefaultPadding + 20,
        0,
      ),
      child: Row(
        children: [
          Text(
            widget.text,
            style: poppinsStyle(),
          ),
          Spacer(),
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          SizedBox(
            width: 50,
            // height: 10,
            child: Flexible(
              child: TextField(
                controller: widget.controller,
                textAlign: TextAlign.center,
                readOnly: (isChecked = isChecked) ? false : true,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          Text(
            widget.lastText,
            style: poppinsStyle(),
          ),
        ],
      ),

      //   child: Row(
      //     children: [
      //       Positioned(left: 0, child: Text("data")),
      //       Positioned(
      //         right: 0,
      //         child: SizedBox(
      //           width: 20,
      //           height: 20,
      //           child: Flexible(
      //             child: TextField(),
      //           ),
      //         ),
      //       ),
      //       Positioned(right: 0, child: Text("data2")),
      //     ],
      //   ),
    );
  }
}
