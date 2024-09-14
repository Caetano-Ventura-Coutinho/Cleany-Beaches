import 'package:cleany_beaches/main.dart';
import 'package:cleany_beaches/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cleany_beaches/Praia.dart';

void praiasPags() {
  runApp(const MaterialApp (title: "Cleany Beaches",
  home: PraiasPag(),));
}

class PraiasPag extends StatefulWidget {
  const PraiasPag({super.key});


  @override
  PraiasPAG createState() => PraiasPAG();
}
    const List<Praia> praias = [
      Praia(1,'Praia do Félix', 'img/imgPraiaF.png', true, 'Acesso através do Km 39,9 da Br-101, entrando pela portaria do condomínio, descendo a via asfaltada por 1,5 Km; Caminhada de aproximadamente 5 min para chegar à praia.', 'https://maps.app.goo.gl/o7uopocz7rjHV8QQ8'),
      Praia(2,'Praia do Lázaro', 'img/imgPraiaL.png', true, 'Para chegar lá, basta seguir pela rodovia BR-101 e, em Ubatuba, pegar a avenida principal que leva ao bairro do Lázaro.', 'https://maps.app.goo.gl/Y7dFFPZz3Hk9tnHs6'),
      Praia(3,'Praia da Enseada', 'img/imgPraiaE.png', true, 'Acesso pela Rodovia Rio-Santos (BR-101). Basta seguir pela rodovia até o trevo de Ubatuba e então pegar a ,saída em direção ao bairro de Toninhas, onde a praia está localizada.', 'https://maps.app.goo.gl/4AvuN3ij53ZPPJRf7'),
      Praia(4,'Praia do Gonzaguinha', 'img/imgPraiaG.png', false, ' Pegue o ônibus 101 na Rodoviária de São Vicente. Após isso, desça na parada Praia do Gonzaguinha e siga as placas instrucionais, caminhando para a praia.', 'https://maps.app.goo.gl/nqRALLGEPhjw1eBk7')

    ];

class PraiasPAG extends State<PraiasPag> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 250, 206),
          //Body
          body: _Estrutura()
          
        )

          );
        }
          Widget _Estrutura(){
            return Center(
            child: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                Text(
                  'Praias',
                  style: GoogleFonts.getFont("Jost", fontSize: 26),
                ),

                _Lista(),

        Container(
                  margin: const EdgeInsets.all(40),
                  child: SizedBox(
                    width: 293,
                    height: 84,
                    child: TextButton.icon(
                        onPressed: () {
                          cont = 0;
                          pag = 1;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MainApp()));;
                        },
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
                )
              ],
            ),
            ), 
          );
          }

        Widget _Lista (){
          return Material(
            color: const Color.fromARGB(255, 255, 250, 206),
            child: Expanded(
            child:ListView.builder(
         itemCount: praias.length,
         shrinkWrap: true,
        itemBuilder: (BuildContext ctx, index){
          return _Praia(index);
        },
                ))
      );}

      Widget _Praia(int index){
        return Container(
                  margin: const EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      Image.asset(praias[index].Img),
                      Column(
                        children: <Widget>[
                          Text(
                            praias[index].Nome,
                            style: GoogleFonts.getFont("Jost", fontSize: 16),
                          ),
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Routes(), settings: RouteSettings(arguments: praias[index])));},
                              icon: const Icon(Icons.location_on),
                              label: const Text('Clique para localização')),
                        ],
                      )
                    ],
                  ),
          );
      }
  }


