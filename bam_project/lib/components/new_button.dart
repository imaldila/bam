import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class NewButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const NewButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      width: size.width * 0.25,
      height: size.height * 0.08,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: onPressed,
          style:
              ElevatedButton.styleFrom(elevation: 10, primary: primaryColor),
          child: Text(text, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
