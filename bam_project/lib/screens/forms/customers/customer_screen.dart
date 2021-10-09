import 'package:bam_project/components/text_field_name.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/forms/components/date_picker.dart';
import 'package:bam_project/screens/forms/materials/material_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/customer_form.dart';
import 'components/customer_list.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  final _formKey = GlobalKey<FormState>();
  final _listKeyL = GlobalKey<FormState>();
  final _listKeyP = GlobalKey<FormState>();
  final _dateKey = GlobalKey<FormState>();

  

  String? _valLayanan;
  List _listLayanan = ['Pasang Baru', 'Gangguan'];

  String? _valPaket;
  List _listPaket = [
    '1P',
    '2P',
    '3P',
    'VPNIP',
    'ASTINET',
    'METRO-E',
    'SIP-TRUNK',
    'OTHERS'
  ];

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference baid = firestore.collection('baid');

    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Jenis Layanan"),
                CustomerList(
                  formKey: _listKeyL,
                  value: _valLayanan,
                  items: _listLayanan.map((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _valLayanan = value!;
                    });
                  },
                  validator: (value) =>
                      value == null ? "This field is required" : null,
                ),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Jenis Paket"),
                CustomerList(
                  formKey: _listKeyP,
                  value: _valPaket,
                  items: _listPaket.map((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _valPaket = value!;
                    });
                  },
                  validator: (value) =>
                      value == null ? "This field is required" : null,
                ),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Tanggal"),
                MyDatePicker(
                  formKey: _dateKey,
                ),
                const SizedBox(height: defaultPadding),
                CustomerForm(formKey: _formKey),
                const SizedBox(height: defaultPadding),
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_listKeyL.currentState!.validate() &&
                            _listKeyP.currentState!.validate() &&
                            _dateKey.currentState!.validate() &&
                            _formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _listKeyL.currentState!.save();
                          _listKeyL.currentState!.save();
                          _dateKey.currentState!.save();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MaterialScreen()));
                        }
                      },
                      child: Text(
                        "Next",
                        style: poppinsStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset("assets/icons/ic_back.svg"),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        "Input BA | Customer",
        style: GoogleFonts.montserrat(
            color: Colors.black, fontWeight: FontWeight.bold),
      ),
      actions: [
        Image(
            width: 63,
            height: 32,
            image: AssetImage("assets/images/logo_ta.png"))
      ],
    );
  }
}
