import 'package:cleany_beaches/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cleany_beaches/Praia.dart';

void ongsPags() {
  runApp(const MaterialApp (title: "Cleany Beaches",
  home: ongsPag(),));
}

class ongsPag extends StatefulWidget {
  const ongsPag({super.key});


  @override
  ongsPAG createState() => ongsPAG();
}

class ongsPAG extends State<ongsPag> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 250, 206),
          //Body
          body: Text('')
          
        )

          );}}