import 'package:bam_project/components/rounded_input_field.dart';
import 'package:bam_project/components/textfield_container.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/models/Layanan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/list_button.dart';

class FormBa extends StatefulWidget {
  @override
  _FormBaState createState() => _FormBaState();
}

class _FormBaState extends State<FormBa> {
  String? _valLayanan;
  List _listlayanan = ['Pasang Baru', 'Gangguan'];
  final TextEditingController namaController = TextEditingController();

  String? _valPaket;
  List _listPaket = [
    '2P',
    '3P',
    'DATIN',
    'ASTINET',
    'METRO-E',
    'SIP-TRUNK',
    'OTHERS'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset("assets/icons/ic_back.svg"),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Input BA",
          style: GoogleFonts.montserrat(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Image(
              width: 63,
              height: 32,
              image: AssetImage("assets/images/logo_ta.png"))
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 0),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListButton(
              hint: "Jenis Layanan",
              value: _valLayanan,
              items: _listlayanan.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChange: (value) {
                setState(() {
                  _valLayanan = value;
                });
              },
            ),
            ListButton(
              hint: "Jenis Paket",
              value: _valPaket,
              items: _listPaket.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChange: (value) {
                setState(() {
                  _valPaket = value;
                });
              },
            ),
            // Container(
            //   width: size.width / 1.1,
            //   child: TextFieldContainer(

            //     child: TextField(
            //       style: GoogleFonts.poppins(),
            //       decoration: InputDecoration(
            //         border: InputBorder.none,
            //         hintText: "Nama Pelanggan",
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
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
                    child: Container(
                      padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                      ),
                      width: size.width / 1.1,
                      child: TextFieldContainer(
                        child: TextField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nama Pelanggan",
                          ),
                        ),
                      ),
                    ))),
            Padding(
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
                    child: Container(
                      padding: EdgeInsets.only(
                        left: kDefaultPadding,
                        right: kDefaultPadding,
                      ),
                      width: size.width / 1.1,
                      height: size.width / 3,
                      child: TextFieldContainer(
                        child: TextField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Alamat",
                          ),
                        ),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
