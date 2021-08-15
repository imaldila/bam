import 'package:bam_project/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(kDefaultPadding * 1.5),
          bottomRight: Radius.circular(kDefaultPadding * 1.5),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: size.height * 0.25,
              width: size.width * 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(bottom: 10),
                      elevation: 5,
                      primary: kPrimaryColor,
                      alignment: Alignment.bottomCenter),
                  child: Text(
                    "BA on Progress",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserratAlternates(fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Container(
              height: size.height * 0.25,
              width: size.width * 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(bottom: 10),
                      elevation: 5,
                      primary: kPrimaryColor,
                      alignment: Alignment.bottomCenter),
                  child: Text(
                    "BA Completed",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserratAlternates(fontSize: 24),
                  ),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
