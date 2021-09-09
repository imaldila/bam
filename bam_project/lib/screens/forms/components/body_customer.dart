import 'package:bam_project/components/new_button.dart';
import 'package:bam_project/screens/forms/components/date_picker.dart';
import 'package:bam_project/screens/forms/components/form_address_field.dart';
import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:bam_project/screens/forms/components/list_button.dart';
import 'package:bam_project/screens/forms/form_ba_customer_screen.dart';
import 'package:bam_project/screens/forms/form_ba_material_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyCustomer extends StatefulWidget {
  const BodyCustomer({
    Key? key,
  }) : super(key: key);

  @override
  _BodyCustomerState createState() => _BodyCustomerState();
}

class _BodyCustomerState extends State<BodyCustomer> {
  final TextEditingController ticketController = TextEditingController();
  final TextEditingController ndController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController picController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  void dispose() {
    ticketController.dispose();
    ndController.dispose();
    nameController.dispose();
    addressController.dispose();
    picController.dispose();
    dateController.dispose();
    super.dispose();
  }

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
    return Center(
      child: ListView(
        children: [
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
            MyDatePicker(),
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
                // ignore: unrelated_type_equality_checks
                if (_valLayanan == 'Gangguan') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormMaterial()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormCustomer()));
                }

                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => FormBa2()));
              },
            ),
          )
        ],
      ),
    );
  }
}
