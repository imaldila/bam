import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? _dateTime;

  Future<void> _selectDate(BuildContext context) async {
    // ignore: unused_local_variable
    final DateTime? selectDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    ).then((selectDate) {
      setState(() {
        _dateTime = selectDate;
      });
    });
  }

  String getText() {
    if (_dateTime == null) {
      return 'Tanggal';
    } else {
      return DateFormat('dd/MM/yyyy').format(_dateTime!);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: size.width * 2,
        height: size.height / 13.5,
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
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                alignment: Alignment.centerLeft,
                shadowColor: Colors.transparent),
            onPressed: () {
              _selectDate(context);
            },
            child: Text(
              getText(),
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ));
  }
}
