import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class OntForm extends StatelessWidget {
  const OntForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: size.width / 1.3,
            child: Stack(
              children: [
                Material(
                  elevation: 8,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: size.height / 14.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.characters,
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "SN ONT Lama",
                    counterText: "",
                    contentPadding: EdgeInsets.all(defaultPadding),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width / 8,
            child: Icon(Icons.arrow_right, size: 36),
          ),
          Container(
            width: size.width / 1.3,
            child: Stack(
              children: [
                Material(
                  elevation: 8,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: size.height / 14.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.characters,
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "SN ONT Baru",
                    counterText: "",
                    contentPadding: EdgeInsets.all(defaultPadding),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
