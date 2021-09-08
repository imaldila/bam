// import 'dart:html';

import 'package:bam_project/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

import '../../../constants.dart';
import 'package:flutter/material.dart';

class CheckBoxField extends StatefulWidget {
  final text;
  final lastText;
  final controller;

  final labelText;

  const CheckBoxField(
      {Key? key, this.text, this.lastText, this.controller, this.labelText})
      : super(key: key);
  @override
  _CheckBoxFieldState createState() => _CheckBoxFieldState();
}

final TextEditingController _controller = TextEditingController();

class _CheckBoxFieldState extends State<CheckBoxField> {
  bool isChecked = false;

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding,
        0,
      ),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            widget.text,
            style: poppinsStyle(),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              (_counter > 0 ? _decrementCounter() : 0);
            },
            icon: Icon(Icons.remove),
          ),
          Text("$_counter"),
          IconButton(
            onPressed: () {
              _incrementCounter();
            },
            icon: Icon(Icons.add),
          ),
          // (isChecked != isChecked)
          //     ? FloatingActionButton(
          //         backgroundColor: Colors.red,
          //         onPressed: () {},
          //         child: Icon(Icons.remove),
          //         mini: true,
          //       )
          //     : FloatingActionButton(
          //         child: Icon(Icons.remove),
          //         mini: true,
          //         onPressed: () {
          //           _decrementCounter();
          //           _controller.value =
          //               _controller.value.copyWith(text: _counter.toString());
          //         },
          //       ),
          // FloatingActionButton(
          //   mini: true,
          //   onPressed: () {
          //     context.read<CounterCubit>().cubitDecrement(-1);
          //   },
          //   key: const Key('counterView_decrement_floatingActionButton'),
          //   child: const Icon(Icons.remove),
          // ),
          // SizedBox(
          //   width: 10,
          //   height: 10,
          //   child: BlocBuilder<CounterCubit, CounterState>(
          //     builder: (_, cubitState) => Text(
          //       (cubitState is CountercubitstateFilled)
          //           ? "${cubitState.value}"
          //           : "-",
          //       style: poppinsStyle(fontSize: 16),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   width: 50,
          //   // child: TextFormField(
          //   //   controller: _controller,
          //   // ),
          //   // height: 10,
          //   child: Flexible(
          //     child: Directionality(
          //       textDirection: TextDirection.rtl,
          //       child: TextField(
          //         maxLength: 2,
          //         decoration: InputDecoration(
          //           // hintText: '$_counter',
          //           counterText: '',
          //           labelText: widget.labelText,
          //         ),
          //         controller: _controller,
          //         textAlign: TextAlign.center,
          //         readOnly: (isChecked = isChecked) ? false : true,
          //         keyboardType: TextInputType.number,
          //       ),
          //     ),
          //   ),
          // ),
          // FloatingActionButton(
          //   mini: true,
          //   onPressed: () {
          //     context.read<CounterCubit>().cubitIncrement(1);
          //   },
          //   key: const Key('counterView_decrement_floatingActionButton'),
          //   child: const Icon(Icons.remove),
          // ),
          // FloatingActionButton(
          //   child: Icon(Icons.add),
          //   mini: true,
          //   tooltip: 'Increment',
          //   onPressed: () {
          //     _incrementCounter();
          //     _controller.value = _controller.value.copyWith(
          //       text: _counter.toString(),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
