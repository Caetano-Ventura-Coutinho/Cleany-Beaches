import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 255, 250, 206)),
      home: Scaffold(
        //AppBar
        appBar: AppBar(
          title: const Text('Cleany Beaches'),
          backgroundColor: const Color.fromARGB(255, 0, 186, 243),
          titleTextStyle: GoogleFonts.homenaje(fontSize: 32),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.keyboard_return, color: Colors.black)),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              //Praia do Félix
              Container(
                margin: const EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Praia do Félix',
                          style: GoogleFonts.getFont("Jost", fontSize: 24),
                        ),
                        Image.asset('img/imgPraiaF.png', scale: 0.75),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      color: const Color.fromARGB(255, 255, 254, 236),
                      width: 168,
                      height: 152,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Acesso através do Km 39,9 da Br-101, entrando pela portaria do condomínio, descendo por via asfaltada por 1,5Km; Caminhada de aproximadamente 5 min para chegar a praia.',
                        style: GoogleFonts.getFont("Jost", fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              //Praia do Lázaro
              Container(
                margin: const EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Praia do Lázaro',
                          style: GoogleFonts.getFont("Jost", fontSize: 24),
                        ),
                        Image.asset('img/imgPraiaL.png', scale: 0.75),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      color: const Color.fromARGB(255, 255, 254, 236),
                      width: 168,
                      height: 152,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Para chegar lá, basta seguir pela rodovia BR-101 e, em Ubatuba, pegar a avenida principal que leva ao bairro do Lázaro.',
                        style: GoogleFonts.getFont("Jost", fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              //Praia da Enseada
              Container(
                margin: const EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Praia da Enseada',
                          style: GoogleFonts.getFont("Jost", fontSize: 24),
                        ),
                        Image.asset('img/imgPraiaE.png', scale: 0.75),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      color: const Color.fromARGB(255, 255, 254, 236),
                      width: 168,
                      height: 152,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Acesso pela Rodovia Rio-Santos (BR-101). Basta seguir pela rodovia até o trevo de Ubatuba e então pegar a saída em direção ao bairro de Toninhas, onde a praia está localizada.',
                        style: GoogleFonts.getFont("Jost", fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
