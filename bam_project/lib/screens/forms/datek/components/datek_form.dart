import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DatekForm extends StatelessWidget {
  const DatekForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "STO :",
            style: poppinsStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              textInputAction: TextInputAction.next,
              style: poppinsStyle(),
              textAlign: TextAlign.center,
              maxLength: 3,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide()),
                  border: UnderlineInputBorder(),
                  counterText: ""),
            ),
          ),
          const SizedBox(width: defaultPadding),
          Text(
            "ODC :",
            style: poppinsStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              textInputAction: TextInputAction.next,
              style: poppinsStyle(),
              textAlign: TextAlign.center,
              maxLength: 3,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide()),
                  border: UnderlineInputBorder(),
                  counterText: ""),
            ),
          ),
          const SizedBox(width: defaultPadding),
          Text(
            "ODP :",
            style: poppinsStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              textInputAction: TextInputAction.next,
              style: poppinsStyle(),
              textAlign: TextAlign.center,
              maxLength: 3,
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide()),
                  border: UnderlineInputBorder(),
                  counterText: ""),
            ),
          ),
          const SizedBox(width: defaultPadding),
          Text(
            "PORT :",
            style: poppinsStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 50,
            child: TextField(
              textInputAction: TextInputAction.done,
              style: poppinsStyle(),
              textAlign: TextAlign.center,
              maxLength: 3,
              textCapitalization: TextCapitalization.characters,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide()),
                  border: UnderlineInputBorder(),
                  counterText: ""),
            ),
          )
        ],
      ),
    );
  }
}
