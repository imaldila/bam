import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class FormInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final ValueChanged<String>? onChange;
  final int? maxLenght;
  final TextCapitalization textCapitalization;
  final String? labelText;
  final TextInputType? keyboardType;
  final RequiredValidator? requiredValidator;

  const FormInputField({
    Key? key,
    this.hintText,
    this.onChange,
    required this.controller,
    this.maxLenght,
    this.textCapitalization = TextCapitalization.none,
    this.labelText,
    this.keyboardType, this.requiredValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: TextFormField(
          validator: requiredValidator!,
          textCapitalization: textCapitalization,
          maxLength: maxLenght,
          controller: controller,
          onChanged: onChange,
          style: GoogleFonts.poppins(),
          keyboardType: keyboardType,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              labelText: labelText,
              // labelStyle: ,
              counterText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: hintText,
              contentPadding: EdgeInsets.all(kDefaultPadding)),
        ),
      ),
    );
  }
}
