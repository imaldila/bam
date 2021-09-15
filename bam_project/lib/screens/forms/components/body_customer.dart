import 'package:bam_project/components/new_button.dart';
import 'package:bam_project/screens/details/detail_screen.dart';
import 'package:bam_project/screens/forms/components/date_picker.dart';
import 'package:bam_project/screens/forms/components/form_address_field.dart';
import 'package:bam_project/screens/forms/components/form_input_field.dart';
import 'package:bam_project/screens/forms/components/list_button.dart';
import 'package:bam_project/screens/forms/form_ba_customer_screen.dart';
import 'package:bam_project/screens/forms/form_ba_material_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

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
              requiredValidator: RequiredValidator(errorText: "req"),
              controller: ticketController,
              hintText: "No Ticket / SC",
              onChange: (value) {},
              labelText: "No Ticket / SC",
              textCapitalization: TextCapitalization.characters,
              maxLenght: 15,
            ),
            FormInputField(
                controller: ndController,
                hintText: "No Inet / Tlp / SID",
                labelText: "No Inet / Tlp / SID",
                keyboardType: TextInputType.number,
                maxLenght: 22,
                onChange: (value) {}),
            FormInputField(
              controller: nameController,
              hintText: "Nama Pelanggan",
              labelText: "Nama Pelanggan",
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              onChange: (value) {},
            ),
            FormInputField(
              controller: picController,
              hintText: "PIC / No HP Pelanggan",
              labelText: "PIC / No HP Pelanggan",
              keyboardType: TextInputType.number,
              maxLenght: 24,
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
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
