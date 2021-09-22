import 'package:bam_project/components/text_field_name.dart';
import 'package:bam_project/constants.dart';
import 'package:bam_project/screens/details/detail_screen.dart';
import 'package:bam_project/screens/forms/components/date_picker.dart';
import 'package:bam_project/screens/forms/components/list_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../form_ba_material_screen.dart';
import 'components/customer_form.dart';
import 'components/customer_list.dart';
import 'components/dropdown_list.dart';

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
    'DATIN',
    'ASTINET',
    'METRO-E',
    'SIP-TRUNK',
    'OTHERS'
  ];

  @override
  Widget build(BuildContext context) {
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
                // DropDownList(),
                // ListButton(
                //   formKey: _formKey,
                //   hint: "Jenis Layanan",
                //   value: _valLayanan,
                //   items: _listLayanan.map((value) {
                //     return DropdownMenuItem(
                //       child: Text(value),
                //       value: value,
                //     );
                //   }).toList(),
                //   onChange: (value) {
                //     setState(() {
                //       _valLayanan = value;
                //     });
                //   },
                //   validator: (value) =>
                //       value == null ? 'This field is required' : null,
                // ),
                const SizedBox(height: defaultPadding),
                // TextFieldName(text: "Jenis Paket"),
                // ListButton(
                //   hint: "Jenis Paket",
                //   value: _valPaket,
                //   items: _listPaket.map((value) {
                //     return DropdownMenuItem(
                //       child: Text(value),
                //       value: value,
                //     );
                //   }).toList(),
                //   onChange: (value) {
                //     setState(() {
                //       _valPaket = value;
                //     });
                //   },
                // ),
                // const SizedBox(height: defaultPadding),
                TextFieldName(text: "Tanggal"),
                // MyDatePicker(
                //   formKey: _dateKey,
                // ),
                const SizedBox(height: defaultPadding),
                CustomerForm(formKey: _formKey),
                const SizedBox(height: defaultPadding),
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_listKeyP.currentState!.validate()) {
                          _listKeyP.currentState!.save();
                        } else if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save(); 
                        } else if (_listKeyL.currentState!.validate()) {
                          _listKeyL.currentState!.save();
                          if (_valLayanan == "Gangguan") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormMaterial()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          }
                        }

                        // if (_listKeyP.currentState!.validate() ||
                        //     _listKeyL.currentState!.validate() ||
                        //     _formKey.currentState!.validate()) {
                        //   _listKeyP.currentState!.save();
                        //   _listKeyL.currentState!.save();
                        //   _formKey.currentState!.save();
                        //   if (_valLayanan == "Gangguan") {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => FormMaterial()));
                        //   } else {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => DetailScreen()));
                        //   }
                        // }
                      },

                      // if (_formKey.currentState!.validate() ||
                      //     _valLayanan == "Gangguan") {
                      //   _formKey.currentState!.save();
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => FormMaterial()));
                      // } else {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => DetailScreen()));
                      // }

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





// class CustomerScreen extends StatelessWidget {
//   const CustomerScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 MyDatePicker(),
//                 const SizedBox(height: defaultPadding),
//                 Material(
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(8),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "No Ticket / No SC / No AO",
//                         labelText: "No Ticket / No SC / No AO"),
//                   ),
//                 ),
//                 const SizedBox(height: defaultPadding),
//                 Material(
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(8),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "No Inet / Tlp / SID",
//                         labelText: "No Inet / Tlp / SID"),
//                   ),
//                 ),
//                 const SizedBox(height: defaultPadding),
//                 Material(
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(8),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Nama Pelanggan",
//                         labelText: "Nama Pelanggan"),
//                   ),
//                 ),
//                 const SizedBox(height: defaultPadding),
//                 Material(
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(8),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "PIC / No HP Pelanggan",
//                         labelText: "PIC / No HP Pelanggan"),
//                   ),
//                 ),
//                 const SizedBox(height: defaultPadding),
//                 Material(
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(8),
//                   child: TextFormField(
//                     maxLines: 4,
//                     decoration: InputDecoration(
//                         hintText: "Alamat", labelText: "Alamat"),
//                   ),
//                 ),
//                 const SizedBox(height: defaultPadding),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
