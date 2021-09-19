import 'package:bam_project/components/text_field_name.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

// ignore: must_be_immutable
class CustomerForm extends StatefulWidget {
  CustomerForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  @override
  _CustomerFormState createState() => _CustomerFormState();
}

class _CustomerFormState extends State<CustomerForm> {
  final TextEditingController ticketController = TextEditingController();
  final TextEditingController ndController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController picController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController controllerUsername = TextEditingController();

  @override
  void dispose() {
    ticketController.dispose();
    ndController.dispose();
    nameController.dispose();
    addressController.dispose();
    picController.dispose();
    dateController.dispose();
    super.dispose();
  }

  // ignore: unused_field
  late String _ticket, _nd, _name, _address, _pic, _username;

  AutovalidateMode _autovalidateMode = AutovalidateMode.onUserInteraction;

  @override
  Widget build(BuildContext context) {
    
    final requiredValidator =
        RequiredValidator(errorText: 'This field is required !');
    return Form(
      autovalidateMode: _autovalidateMode,
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldName(text: "No SC / No Tiket / No AO"),
          Stack(
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
              TextFormField(
                onSaved: (ticket) => _ticket = ticket!,
                validator: requiredValidator,
                textCapitalization: TextCapitalization.characters,
                maxLength: 15,
                controller: ticketController,
                onChanged: (value) {},
                style: GoogleFonts.poppins(fontSize: 16),
                decoration: InputDecoration(
                  hintText: "SC-..  | IN..  | AO..",
                  // labelText: "No SC / No Tiket / No AO",
                  counterText: "",
                  contentPadding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "No Inet / Tlp / SID"),
          Stack(
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
              TextFormField(
                onSaved: (nd) => _nd = nd!,
                validator: requiredValidator,
                keyboardType: TextInputType.number,
                maxLength: 25,
                controller: ndController,
                onChanged: (value) {},
                style: GoogleFonts.poppins(fontSize: 16),
                decoration: InputDecoration(
                  // labelText: "No Inet / Tlp / SID",
                  counterText: "",
                  contentPadding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Nama Pelanggan"),
          Stack(
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
              TextFormField(
                onSaved: (name) => _name = name!,
                validator: requiredValidator,
                textCapitalization: TextCapitalization.words,
                controller: nameController,
                onChanged: (value) {},
                style: GoogleFonts.poppins(fontSize: 16),
                decoration: InputDecoration(
                  // labelText: "Nama Pelanggan",
                  counterText: "",
                  contentPadding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "No Hp Pelanggan / PIC"),
          Stack(
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
              TextFormField(
                onSaved: (pic) => _pic = pic!,
                validator: requiredValidator,
                keyboardType: TextInputType.number,
                maxLength: 24,
                controller: picController,
                onChanged: (value) {},
                style: GoogleFonts.poppins(fontSize: 16),
                decoration: InputDecoration(
                  // labelText: "No Hp Pelanggan / PIC",
                  counterText: "",
                  contentPadding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Alamat"),
          Stack(
            children: [
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                shadowColor: Colors.white,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextFormField(
                onSaved: (address) => _address = address!,
                validator: requiredValidator,
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.streetAddress,
                maxLines: 4,
                controller: addressController,
                onChanged: (value) {},
                style: GoogleFonts.poppins(fontSize: 16),
                decoration: InputDecoration(
                  // labelText: "Alamat",
                  counterText: "",
                  contentPadding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
