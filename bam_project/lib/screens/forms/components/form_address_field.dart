import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class FormAddressField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChange;
  const FormAddressField({
    Key? key,
    required this.controller,
    this.hintText,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding,
        0,
      ),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(8),
        shadowColor: Colors.white,
        child: TextField(
          controller: controller,
          onChanged: onChange,
          style: GoogleFonts.poppins(),
          maxLines: 4,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintText: hintText, contentPadding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding,top: kDefaultPadding)),
        ),
      ),
    );
  }
}
