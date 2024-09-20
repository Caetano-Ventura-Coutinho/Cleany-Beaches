import 'package:cleany_beaches/Praia.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';



void PraiaInfo() {
  runApp(const praiaInfo());
}

class praiaInfo extends StatelessWidget {
  const praiaInfo({super.key});

@override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)!.settings.arguments as Praia;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 250, 206),
       appBar: AppBar(
            title: const Text('Cleany Beaches'),
            backgroundColor: const Color.fromARGB(255, 0, 186, 243),
            titleTextStyle: GoogleFonts.homenaje(fontSize: 35),
          ),

          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Center(child: Text(praia.Nome, style: GoogleFonts.getFont("Jost", fontSize: 33)),
                  )
                  ),
                  Container(
                    padding: const EdgeInsets.all(32),
                    child: Center(
                      child: Image.asset(praia.Img, scale: 0.50,)
                    ) 
                  ),

                  Container( 
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(32.0),
                      height: 250,
                      width: 400,
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: const Color.fromARGB(255, 255, 254, 236),),
                      child: Text(
                        praia.Rota,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont("Jost", fontSize: 18),
                      ),
                    ),

                    _ConditionTag(praia.Condicao),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(bottom: 20, top: 10),
                      margin: const EdgeInsets.only(left: 50),
                      child: Text('Municipio: ' + praia.Mun, style: const TextStyle(fontSize: 18))
                    ),

                    Container(
                        alignment: Alignment.center,
                      padding: const EdgeInsets.all(8.0),
                      width: 400,
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: const Color.fromARGB(255, 255, 254, 236),), 
                      child: Row(
                          children: [
                            Center( child: 
                            TextButton.icon(onPressed: () => launchUrlString(praia.LinkMaps), 
                            icon: const Icon(Icons.location_on, size: 70,), 
                            label: const Text ('Clique para Localização',
                            style: TextStyle(fontSize: 25, fontFamily: 'Jost'),),
                            style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            ),
                            )
                            ),
                          ],
                        ),
                      
                    ),

  
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
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      margin: const EdgeInsets.only(left: 50),
      child: Text('Condição: $CondS', style: TextStyle(color: Cor(Cond), fontSize: 18))
    );
  }
}