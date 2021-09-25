import 'package:bam_project/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomerList extends StatefulWidget {
  const CustomerList({
    Key? key,
    required this.formKey,
    this.value,
    this.items,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final value;
  final items;
  final ValueChanged? onChanged;
  final validator;
  final GlobalKey formKey;

  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                shadowColor: Colors.white,
                child: Container(
                  height: 62,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              DropdownButtonFormField(
                style: poppinsStyle(color: Colors.black),
                // value: _valLayanan,
                value: widget.value,
                icon: SvgPicture.asset(
                  'assets/icons/ic_button.svg',
                  color: Color(0xFF2D9CDB),
                ),
                onChanged: widget.onChanged,
                // onChanged: (value) => setState(() => _valLayanan = value!),
                // validator: (value) =>
                //     value == null ? 'This field is required' : null,
                // items: _listlayanan.map<DropdownMenuItem<String>>((value) {
                //   return DropdownMenuItem(
                //     child: Text(value),
                //     value: value,
                //   );
                // }).toList(),
                items: widget.items,
                validator: widget.validator,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(defaultPadding)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
