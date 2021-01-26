import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui_clone/src/screens/Home.dart';

class WhatsappUiClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.purple[900],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => Home()},
    );
  }
}
