import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/details/detail_screen.dart';
import 'package:bam_project/screens/home/components/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: Container(
            color: Color(0xFFEAEAEA),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: headerHeight,
                  child: HomeHeader(),
                ),
                Positioned(
                  top: headerHeight,
                  left: 0,
                  right: 0,
                  height: kDefaultPadding * 26,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
                        return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height * 0.25,
                                width: size.width * 0.6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailScreen()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: kPrimaryColor,
                                      alignment: Alignment.bottomCenter
                                    ),
                                    child: (Text(
                                      "BA on Progress",
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.montserratAlternates(
                                          fontSize: 24),
                                    )),
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
                                      elevation: 5,
                                      primary: kPrimaryColor,
                                      alignment: Alignment.bottomCenter
                                    ),
                                    child: (Text(
                                      "BA Completed",
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.montserratAlternates(
                                          fontSize: 24),
                                    )),
                                  ),
                                ),
                              ),
                            ]);
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: bottomBarHeight,
                  child: Container(color: Colors.red),
                )
              ],
            ),
          ),
        ));
  }
}
