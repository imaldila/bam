import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.white,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi !",
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.caption),
              ),
              Text(
                "Aldila Nurhadiputra",
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.subtitle1!),
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/image_profile.jpg"),
          )
        ],
      ),
    );
  }
}
