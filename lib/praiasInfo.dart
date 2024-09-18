import 'package:cleany_beaches/Praia.dart';
import 'package:cleany_beaches/praias.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



void PraiaInfo() {
  runApp(const praiaInfo());
}

class praiaInfo extends StatelessWidget {
  const praiaInfo({super.key});

@override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)!.settings.arguments as Praia;
    return Scaffold(
       appBar: AppBar(
            title: const Text('Cleany Beaches'),
            backgroundColor: const Color.fromARGB(255, 0, 186, 243),
            titleTextStyle: GoogleFonts.homenaje(fontSize: 32),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(child: Text(praia.Nome)),
                  Container(
                    child: Center(
                      child: Image.asset(praia.Img) 
                    ) 
                  ),
                  Container( 
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(32.0),
                      color: const Color.fromARGB(255, 255, 254, 236),
                      child: Text(
                        praia.Rota,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont("Jost", fontSize: 30),
                      ),
                    ),
                    _ConditionTag(praia.Condicao),
                    Container(
                      child: Text('Municipio: ' + praia.LinkMaps,)
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: praia.AbrirLink(praia.LinkMaps), icon: const Icon(Icons.location_on))
                        ],
                      )
                    )

                ]
              )
            ),
          ),
    );
  }
  String Condicao(bool Cond){
    if(Cond){
      return 'Própria'; 
    }
    else{
      return 'Imprópria';
    }
  }

  Color Cor(bool Cond){
    if(Cond){
      return Colors.green; 
    }
    else{
      return Colors.red;
    }
  }

  Widget _ConditionTag(bool Cond){
    String CondS = Condicao(Cond);
    return Container(
      child: Text('Condição $CondS', style: TextStyle(color: Cor(Cond)),)
    );
  }
}