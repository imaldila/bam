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
    Size size = MediaQuery.of(context).size;
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
                  height: size.height / 14,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              DropdownButtonFormField(
                style: poppinsStyle(color: Colors.black),
                value: widget.value,
                icon: SvgPicture.asset(
                  'assets/icons/ic_button.svg',
                  color: Color(0xFF2D9CDB),
                ),
                onChanged: widget.onChanged,
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
