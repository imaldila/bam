import 'package:bam_project/constants.dart';
import 'package:bam_project/models/Layanan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormBa extends StatefulWidget {
  const FormBa({Key? key, this.layanans}) : super(key: key);
  final Layanan? layanans;

  @override
  _FormBaState createState() => _FormBaState();
}

class _FormBaState extends State<FormBa> {
  String? valueChoose;
  List listItem = [
    "Pasang Baru",
    "Gangguan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Input BA",
            style: GoogleFonts.montserrat(color: Colors.black)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlue,
                        blurRadius: 95,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1))
                  ],
                  border: Border.all(
                    color: Colors.lightBlue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  elevation: 8,
                  hint: Text(
                    "Jenis Layanan",
                    style: GoogleFonts.montserrat(),
                  ),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue.toString();
                    });
                  },
                  items: listItem.map(
                    (valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
