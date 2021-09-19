import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({
    Key? key,
  }) : super(key: key);

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
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
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          shadowColor: Colors.white,
          elevation: 8,
          child: Container(
            margin: EdgeInsets.only(top: 6, bottom: 6),
            padding:
                EdgeInsets.only(left: defaultPadding, right: defaultPadding),
            child: DropdownButton(
              icon: SvgPicture.asset('assets/icons/ic_button.svg'),
              iconSize: 36,
              hint: Text(
                "Jenis Layanan",
                style: poppinsStyle(color: Colors.black),
              ),
              style: poppinsStyle(color: Colors.black),
              isExpanded: true,
              value: _valLayanan,
              underline: SizedBox(),
              items: _listlayanan.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valLayanan = value.toString();
                });
              },
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        Material(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          shadowColor: Colors.white,
          elevation: 8,
          child: Container(
            margin: EdgeInsets.only(top: 6, bottom: 6),
            padding:
                EdgeInsets.only(left: defaultPadding, right: defaultPadding),
            child: DropdownButton(
              icon: SvgPicture.asset('assets/icons/ic_button.svg'),
              iconSize: 36,
              hint: Text(
                "Jenis Paket",
                style: poppinsStyle(color: Colors.black),
              ),
              style: poppinsStyle(color: Colors.black),
              isExpanded: true,
              value: _valPaket,
              underline: SizedBox(),
              items: _listPaket.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valPaket = value.toString();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}