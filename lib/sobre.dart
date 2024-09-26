import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void sobre() {
  runApp(const Sobre());
}

class Sobre extends StatelessWidget {

  const Sobre({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 250, 206),
          //Body
          body: Center(
            child: Container( 
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(32.0),
                      color: const Color.fromARGB(255, 255, 254, 236),
                      width: MediaQuery.of(context).size.width * 90 /100,
                      height: MediaQuery.of(context).size.height * 80 /100,
                      child: Text(
                        textAlign: TextAlign.center,
                        '''Nós somos uma organização sem fins lucrativos que tem como objetivo recrutar novos trabalhadores voluntários para as tão importantes ONG’s ambientais marítimas e litorâneas. 
Nosso aplicativo também inclui informações sobre as praias mais próximas de você e referências de como chegar a esses lugares maravilhosos''',
                        style: GoogleFonts.getFont("Jost", fontSize: 30),
                      ),
                    ),
          )
        )
        );}}