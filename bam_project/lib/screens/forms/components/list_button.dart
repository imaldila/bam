import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class ListButton extends StatefulWidget {
  final value;
  final items;
  final String hint;
  final ValueChanged? onChange;

  const ListButton({
    Key? key,
    this.value,
    this.onChange,
    this.items,
    required this.hint,
  }) : super(key: key);

  @override
  _ListButtonState createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding,
        0,
      ),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(8),
        shadowColor: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          child: DropdownButton(
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
            underline: SizedBox(),
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.black,
            ),
            value: widget.value,
            onChanged: widget.onChange,
            items: widget.items,
          ),
        ),
      ),
    );
  }
}
