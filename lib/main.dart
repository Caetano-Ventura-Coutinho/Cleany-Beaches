import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 255, 250 , 206)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cleany Beaches'),
          backgroundColor: const Color.fromARGB(255, 0, 186, 243),
          titleTextStyle: GoogleFonts.homenaje(fontSize: 32),
        ),
        body: Center(
          
          child: Column(
            
          children: <Widget> [
            Text(
              'Praias',
              style: GoogleFonts.getFont("Jost", fontSize: 26),
              ),
             Row(
            children: <Widget>[
              Image.asset('img/imgPraiaF.png'),
              Column(
                children:  <Widget>[
                  
                  Text(
              'Praia do Félix',
              style: GoogleFonts.getFont("Jost", fontSize: 16),
              ),
              TextButton.icon(onPressed: () {}, icon: const Icon(Icons.location_on), label: const Text('Clique para localização') ),

                ],
              )
              
            ],      
            )
            ],
        ),
      ),
      
      )
    );
  }
}
