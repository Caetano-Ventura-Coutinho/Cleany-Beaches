import 'package:cleany_beaches/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp (title: "Cleany Beaches",
  home: MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
          ),

          //NavigationBar
          bottomNavigationBar: NavigationBar(
            surfaceTintColor: const Color.fromARGB(255, 133, 226, 255),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Início'),
              NavigationDestination(icon: Icon(Icons.groups), label: "ONG's"),
              NavigationDestination(icon: Icon(Icons.location_on), label: 'Rotas'),
              NavigationDestination(icon: Icon(Icons.info), label: 'Sobre')
            ],
            backgroundColor: const Color.fromARGB(255, 0, 186, 243),
          ),
          
          //Body
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Praias',
                  style: GoogleFonts.getFont("Jost", fontSize: 26),
                ),

                //Praia do Félix
                Container(
                  margin: const EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      Image.asset('img/imgPraiaF.png'),
                      Column(
                        children: <Widget>[
                          Text(
                            'Praia do Félix',
                            style: GoogleFonts.getFont("Jost", fontSize: 16),
                          ),
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Routes(),));},
                              icon: const Icon(Icons.location_on),
                              label: const Text('Clique para localização')),
                        ],
                      )
                    ],
                  ),
                ),

                //Praia do Lázaro
                Container(
                  margin: const EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      Image.asset('img/imgPraiaL.png'),
                      Column(
                        children: <Widget>[
                          Text(
                            'Praia do Lázaro',
                            style: GoogleFonts.getFont("Jost", fontSize: 16),
                          ),
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Routes(),));},
                              icon: const Icon(Icons.location_on),
                              label: const Text('Clique para localização')),
                        ],
                      )
                    ],
                  ),
                ),

                //Botão ONG
                Container(
                  margin: const EdgeInsets.all(40),
                  child: SizedBox(
                    width: 293,
                    height: 84,
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.groups_2, size: 70),
                        label: const Text("ONG's: Saiba Mais",
                            style: TextStyle(fontSize: 20,),
                            softWrap: true
                            ),                            
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            side: const BorderSide(color: Colors.black))),
                  ),
                ),

                //Praia da Enseada
                Container(
                  margin: const EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      Image.asset('img/imgPraiaE.png'),
                      Column(
                        children: <Widget>[
                          Text(
                            'Praia da Enseada',
                            style: GoogleFonts.getFont("Jost", fontSize: 16),
                          ),
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Routes(),));},
                              icon: const Icon(Icons.location_on),
                              label: const Text('Clique para localização')),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


