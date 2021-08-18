import 'package:bam_project/components/new_button.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/components/form_address_field.dart';
import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:bam_project/screens/forms/components/list_button.dart';
import 'package:bam_project/screens/forms/form_ba2_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body1 extends StatefulWidget {
  const Body1({
    Key? key,
  }) : super(key: key);

  @override
  _Body1State createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  final TextEditingController ticketController = TextEditingController();
  final TextEditingController ndController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController picController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  // @override
  // void initState() {
  //   super.initState();
  //   ticketController.dispose();
  //   nameController.dispose();
  //   addressController.dispose();
  //   super.dispose();
  // }

  String? _valLayanan;
  List _listlayanan = ['Pasang Baru', 'Gangguan'];

  String? _valPaket;
  List _listPaket = [
    '1P',
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
    return Center(
      child: ListView(children: [
        Column(children: [
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
              }),
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
              }),
          Container(
            width: size.width * 2,
            height: size.height / 11.5,
            margin: const EdgeInsets.fromLTRB(
              kDefaultPadding,
              kDefaultPadding,
              kDefaultPadding,
              0,
            ),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              shadowColor: Colors.white,
              child: TextButton(
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2021),
                            lastDate: DateTime(2222),
                            )
                        .then((value) {
                      setState(() {
                        selectedDate = value!;
                      });
                    });
                  },
                  child: Text(
                    selectedDate.toString(),
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black)
                  )),
            ),
          ),
          FormInputField(
              controller: ticketController,
              hintText: "No Tiket / SC",
              onChange: (value) {}),
          FormInputField(
              controller: ndController,
              hintText: "No Inet / Tlp / SID",
              onChange: (value) {}),
          FormInputField(
            controller: nameController,
            hintText: "Nama Pelanggan",
            onChange: (value) {},
          ),
          FormInputField(
            controller: picController,
            hintText: "PIC / No HP Pelanggan",
            onChange: (value) {},
          ),
          FormAddressField(
            controller: addressController,
            hintText: "Alamat",
            onChange: (value) {},
          ),
        ]),
        Positioned(
            child: NewButton(
          text: "Next",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FormBa2()));
          },
        ))
      ]),
    );
  }
}
