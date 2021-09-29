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
            Signature(
              width: size.width,
              controller: signatureController,
              height: size.height / 2,
              backgroundColor: Colors.white24,
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
                  },
                  icon: const Icon(Icons.edit),
                  color: primaryColor,
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  color: primaryColor,
                  onPressed: () {
                    setState(() => signatureController.clear());
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Builder(
  //     builder: (BuildContext context) => Scaffold(
  //       body: ListView(
  //         children: <Widget>[
  //           Container(
  //             height: 300,
  //             child: const Center(
  //               child: Text('Big container to test scrolling issues'),
  //             ),
  //           ),
  //           //SIGNATURE CANVAS
  //           Signature(
  //             controller: signatureController,
  //             height: 300,
  //             backgroundColor: Colors.lightBlueAccent,
  //           ),
  //           //OK AND CLEAR BUTTONS
  //           Container(
  //             decoration: const BoxDecoration(color: Colors.black),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               mainAxisSize: MainAxisSize.max,
  //               children: <Widget>[
  //                 //SHOW EXPORTED IMAGE IN NEW ROUTE
  //                 IconButton(
  //                   icon: const Icon(Icons.check),
  //                   color: Colors.blue,
  //                   onPressed: () async {
  //                     if (signatureController.isNotEmpty) {
  //                       final Uint8List? data =
  //                           await signatureController.toPngBytes();
  //                       if (data != null) {
  //                         await Navigator.of(context).push(
  //                           MaterialPageRoute<void>(
  //                             builder: (BuildContext context) {
  //                               return Scaffold(
  //                                 appBar: AppBar(),
  //                                 body: Center(
  //                                   child: Container(
  //                                     color: Colors.grey[300],
  //                                     child: Image.memory(data),
  //                                   ),
  //                                 ),
  //                               );
  //                             },
  //                           ),
  //                         );
  //                       }
  //                     }
  //                   },
  //                 ),
  //                 //CLEAR CANVAS
  //                 IconButton(
  //                   icon: const Icon(Icons.clear),
  //                   color: Colors.blue,
  //                   onPressed: () {
  //                     setState(() => signatureController.clear());
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //           Container(
  //             height: 300,
  //             child: const Center(
  //               child: Text('Big container to test scrolling issues'),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   ));
  // }
}
