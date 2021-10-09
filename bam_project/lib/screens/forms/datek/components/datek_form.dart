import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DatekForm extends StatelessWidget {
 
  final TextEditingController stoController = TextEditingController();
  final TextEditingController odcController = TextEditingController();
  final TextEditingController odpController = TextEditingController();
  final TextEditingController portController = TextEditingController();
  

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
              controller: stoController,
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
              controller: odcController,
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
              controller: odpController,
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
              controller: portController,
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
