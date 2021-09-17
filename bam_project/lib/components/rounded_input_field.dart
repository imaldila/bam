import 'package:bam_project/components/textfield_container.dart';
import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.icon = Icons.person,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        style: GoogleFonts.montserratAlternates(),
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: "",
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: Icon(
            icon,
            color: primaryLightColor,
          ),
        ),
        //keyboardType: TextInputType.number,
        //maxLength: 8,
      ),
    );
  }
}
