import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/src/screens/Home.dart';

class WhatsappUiClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/": (context) => Home()},
    );
  }
}
