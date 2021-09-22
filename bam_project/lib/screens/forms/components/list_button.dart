import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ListButton extends StatefulWidget {
  final value;
  final items;
  final hint;
  final newKey;
  final ValueChanged? onChange;
  final validator;
  final GlobalKey formKey;

  const ListButton({
    Key? key,
    this.value,
    this.onChange,
    this.items,
    this.hint,
    this.newKey, this.validator, required this.formKey,
  }) : super(key: key);

  @override
  _ListButtonState createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        shadowColor: Colors.white,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 6, bottom: 6),
          padding: EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
          ),
          child: DropdownButtonFormField(
            validator: widget.validator,
            key: widget.newKey,
            hint: Text(
              widget.hint,
              style: GoogleFonts.montserrat(),
            ),
            dropdownColor: Colors.white,
            icon: SvgPicture.asset(
              'assets/icons/ic_button.svg',
              color: Color(0xFF2D9CDB),
            ),
            iconSize: 36,
            isExpanded: true,
            // underline: SizedBox(),
            style: poppinsStyle(color: Colors.black),
            value: widget.value,
            onChanged: widget.onChange,
            items: widget.items,
          ),
        ),
      ),
    );
  }
}
