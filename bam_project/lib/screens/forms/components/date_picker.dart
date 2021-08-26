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
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });

    // if (newDate == null) return;
  }

  // String getText() {
  //   // ignore: unnecessary_null_comparison
  //   if (selectedDate == null) {
  //     return 'Select Date';
  //   } else {
  //     return DateFormat('dd/MM/yyyy').format(selectedDate);
  //     // return '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final _selectedDate = selectedDate;
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
                primary: Colors.white, alignment: Alignment.centerLeft),
            onPressed: () {
              _selectDate(context);
            },
            child: Text(
              // ignore: unnecessary_null_comparison
              _selectedDate != null
                  ? "Select Date"
                  : DateFormat('dd/MM/yyyy').format(selectedDate),
              // // "Select Date",
              //  {(_selectedDate != null) {
              //   return 'Select Date';
              // } else {
              //   return DateFormat('dd/MM/yyyy').format(selectedDate);
              // }}
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
        ));
  }
}

// class MyDatePicker extends StatefulWidget {
//   const MyDatePicker({Key? key, this.restorationId}) : super(key: key);

//   final String? restorationId;

//   @override
//   _MyDatePickerState createState() => _MyDatePickerState();
// }

// class _MyDatePickerState extends State<MyDatePicker> with RestorationMixin {
//   @override
//   String? get restorationId => widget.restorationId;

//   final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
//   late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
//       RestorableRouteFuture<DateTime?>(
//     onComplete: _selectDate,
//     onPresent: (NavigatorState navigator, Object? arguments) {
//       return navigator.restorablePush(
//         _datePickerRoute,
//         arguments: _selectedDate.value.millisecondsSinceEpoch,
//       );
//     },
//   );

//   static Route<DateTime> _datePickerRoute(
//       BuildContext context, Object? arguments) {
//     return DialogRoute<DateTime>(
//         context: context,
//         builder: (BuildContext context) {
//           return DatePickerDialog(
//             restorationId: 'date_picker_dialog',
//             initialEntryMode: DatePickerEntryMode.calendarOnly,
//             initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
//             firstDate: DateTime(DateTime.now().year - 5),
//             lastDate: DateTime(DateTime.now().year + 5),
//           );
//         });
//   }

//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_selectedDate, 'selected_date');
//     registerForRestoration(
//         _restorableDatePickerRouteFuture, 'date_picker_route_future');
//   }

//   void _selectDate(DateTime? newSelectedDate) {
//     if (newSelectedDate != null) {
//       setState(() {
//         _selectedDate.value = newSelectedDate;
//       });
//     }
//   }

//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width * 2,
//       height: size.height / 13.5,
//       margin: const EdgeInsets.fromLTRB(
//         kDefaultPadding,
//         kDefaultPadding,
//         kDefaultPadding,
//         0,
//       ),
//       child: Material(
//         elevation: 8,
//         borderRadius: BorderRadius.circular(8),
//         shadowColor: Colors.white,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               primary: Colors.white, alignment: Alignment.centerLeft),
//           onPressed: () {
//             _restorableDatePickerRouteFuture.present();
//           },
//           child: Text(
//             '${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}',
//             style: GoogleFonts.poppins(color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class NewWidget extends StatefulWidget {
//   const NewWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _NewWidgetState createState() => _NewWidgetState();
// }

// class _NewWidgetState extends State<NewWidget> {
//   DateTime selectedDate = DateTime.now();

//   // String getText() {
//   //   if (selectedDate == null) {
//   //     return 'Select Date';
//   //   } else {
//   //     //return '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
//   //     return DateFormat('dd/MM/yyyy').format(selectedDate);
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width * 2,
//       height: size.height / 14,
//       margin: const EdgeInsets.fromLTRB(
//         kDefaultPadding,
//         kDefaultPadding,
//         kDefaultPadding,
//         0,
//       ),
//       child: Material(
//         elevation: 8,
//         borderRadius: BorderRadius.circular(8),
//         shadowColor: Colors.white,
//         child: TextButton(
//             style: TextButton.styleFrom(
//                 padding: EdgeInsets.only(
//                   left: kDefaultPadding,
//                   right: kDefaultPadding,
//                 ),
//                 alignment: Alignment.centerLeft),
//             // style: ElevatedButton.styleFrom(
//             //     alignment: Alignment.centerLeft,
//             //     primary: Colors.white,
//             //     elevation: 8,
//             //     shadowColor: Colors.white),
//             onPressed: () {
//               showDatePicker(
//                 initialEntryMode: DatePickerEntryMode.calendarOnly,
//                 context: context,
//                 initialDate: selectedDate,
//                 firstDate: DateTime(DateTime.now().year - 5),
//                 lastDate: DateTime(DateTime.now().year + 5),
//               ).then((value) {
//                 setState(() {
//                   selectedDate = value!;
//                 });
//               });
//             },
//             child: Text(getText(),
//                 //"${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
//                 //selectedDate.toString(),
//                 style: GoogleFonts.poppins(fontSize: 16, color: Colors.black))),
//       ),
//     );
//   }
// }
