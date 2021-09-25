import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key, required this.formKey}) : super(key: key);

  final GlobalKey formKey;

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  final TextEditingController dateController = TextEditingController();
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
    dateController.text = getText();
  }

  String getText() {
    if (_dateTime == null) {
      return '';
    } else {
      return DateFormat('dd/MM/yyyy').format(_dateTime!);
    }
  }

  // ignore: unused_field
  late String _date;

  @override
  Widget build(BuildContext context) {
    final requiredValidator =
        RequiredValidator(errorText: 'This field is required !');
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: widget.formKey,
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              shadowColor: Colors.white,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: TextFormField(
                  validator: requiredValidator,
                  onSaved: (date) => _date = date!,
                  controller: dateController,
                  onChanged: (value) {},
                  style: GoogleFonts.poppins(fontSize: 16),
                  decoration: InputDecoration(
                    counterText: "",
                    contentPadding: EdgeInsets.all(defaultPadding),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // return Container(
    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    //   width: double.infinity,
    //   // height: size.height / 13.5,
    //   // margin: const EdgeInsets.fromLTRB(
    //   //   defaultPadding,
    //   //   defaultPadding,
    //   //   defaultPadding,
    //   //   0,
    //   // ),
    //   child: Material(
    //     elevation: 8,
    //     borderRadius: BorderRadius.circular(8),
    //     shadowColor: Colors.white,
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(8),
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //             primary: Colors.white,
    //             alignment: Alignment.centerLeft,
    //             shadowColor: Colors.transparent),
    //         onPressed: () {
    //           _selectDate(context);
    //         },
    //         child: Text(getText(),
    //             style: poppinsStyle(color: Colors.black, fontSize: 15)),
    //       ),
    //     ),
    //   ),
    // );
  }
}
