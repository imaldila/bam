import 'package:bam_project/components/textfield_container.dart';
import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        style: GoogleFonts.montserratAlternates(),
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.visibility,
                color: kPrimaryLightColor,
              ),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
