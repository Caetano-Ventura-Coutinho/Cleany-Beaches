import 'dart:io';
import 'dart:js_interop';

import 'package:cleany_beaches/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cleany_beaches/Praia.dart';
import 'package:cleany_beaches/praias.dart';
import 'package:cleany_beaches/ongsPags.dart';
import 'package:cleany_beaches/sobre.dart';

void main() {
  runApp(const MaterialApp (
    title: "Cleany Beaches",
    debugShowCheckedModeBanner: false,
  home: MainApp(),));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});


  @override
  MainAPP createState() => MainAPP();
}

  int pag = 0;
  int cont = 0;

class MainAPP extends State<MainApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 250, 206),

          //AppBar
          appBar: AppBar(
            title: const Text('Cleany Beaches'),
            backgroundColor: const Color.fromARGB(255, 0, 186, 243),
            titleTextStyle: GoogleFonts.homenaje(fontSize: 32),
          ),

          bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
            backgroundColor:  Color.fromARGB(255, 0, 186, 243),),
          child: NavigationBar(
              selectedIndex: pag,
            surfaceTintColor: const Color.fromARGB(255, 133, 226, 255),
            destinations: <Widget>[
              _Navegar(0, 'Início', const Icon(Icons.home)),
              _Navegar(1, 'ONG\'s', const Icon(Icons.groups)),
              _Navegar(2, 'Sobre', const Icon(Icons.info))
            ],
          ),
        ),
        body: IndexedStack(
          index: pag,
          children: const <Widget>[
            PraiasPag(),
            ongsPag(),
            Sobre(),
          ],
        ),
      ),
          
        )

          ;
        }

      Widget _Navegar(int pagi, String vlabel,  Widget icone){
        return NavigationDestination(
                  icon: _botao(pagi, icone),
                  label: vlabel,
              );
      }

      Widget _botao(int pagi, Widget icone){
        return IconButton(
                  icon: icone,
                  onPressed: (){
                    setState(() {
                      pag = pagi;
                    });
                  },
                );
      }
  }


