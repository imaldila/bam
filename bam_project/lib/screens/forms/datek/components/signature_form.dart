import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

import '../../../../constants.dart';

class SignatureForm extends StatefulWidget {
  const SignatureForm({Key? key}) : super(key: key);

  @override
  _SignatureFormState createState() => _SignatureFormState();
}

class _SignatureFormState extends State<SignatureForm> {
  final SignatureController signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.red,
      exportBackgroundColor: Colors.blue,
      onDrawStart: () => print('onDrawStart called!'),
      onDrawEnd: () => print('onDrawEnd called!'));

  @override
  void initState() {
    super.initState();
    signatureController.addListener(() {
      print('Value Change');
    });
  }

  bool isClicked = false;
  final editKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Material(
              elevation: 8,
              shadowColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Container(
                height: size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
              ),
            ),
            AbsorbPointer(
              absorbing: (isClicked = !isClicked) ? true : false,
              child: Signature(
                width: size.width / 1.2,
                controller: signatureController,
                height: size.height / 2,
                backgroundColor: Colors.white24,
              ),
            ),
            IconButton(
              key: editKey,
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.edit),
              color: primaryColor,
            ),
          ],
        ),
        Material(
          elevation: 8,
          shadowColor: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: () async {
                    if (signatureController.isNotEmpty) {
                      final Uint8List? data =
                          await signatureController.toPngBytes();
                      if (data != null) {
                        await Image.memory(data);
                      }
                    }
                    setState(() {});
                  },
                  icon: const Icon(Icons.check),
                  color: primaryColor,
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  color: primaryColor,
                  onPressed: () {
                    signatureController.clear();
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
