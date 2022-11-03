import 'dart:io'; // To ext methode & some 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DialogBox(),
    );
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Box'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Dialog'),
          onPressed: () {
            showDialogWidget(context);
          },
        ),
      ),
    );
  }

  showDialogWidget(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text('Confirmation:'),
      content: const Text('Are you sure want to Log Out'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('Log Out'),
        ),
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
      }
    );
  }
}
