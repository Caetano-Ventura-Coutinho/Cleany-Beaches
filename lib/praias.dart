import 'package:cleany_beaches/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cleany_beaches/Praia.dart';
import 'package:cleany_beaches/praiasInfo.dart';

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
      Praia(1,'Praia do Félix', 'img/imgPraiaF.png', true, 'Acesso através do Km 39,9 da Br-101, entrando pela portaria do condomínio, descendo a via asfaltada por 1,5 Km; Caminhada de aproximadamente 5 min para chegar à praia.', 'https://maps.app.goo.gl/o7uopocz7rjHV8QQ8', 'Ubatuba'),
      Praia(2,'Praia do Lázaro', 'img/imgPraiaL.png', true, 'Para chegar lá, basta seguir pela rodovia BR-101 e, em Ubatuba, pegar a avenida principal que leva ao bairro do Lázaro.', 'https://maps.app.goo.gl/Y7dFFPZz3Hk9tnHs6', 'Ubatuba'),
      Praia(3,'Praia da Enseada', 'img/imgPraiaE.png', true, 'Acesso pela Rodovia Rio-Santos (BR-101). Basta seguir pela rodovia até o trevo de Ubatuba e então pegar a ,saída em direção ao bairro de Toninhas, onde a praia está localizada.', 'https://maps.app.goo.gl/4AvuN3ij53ZPPJRf7', 'Ubatuba'),
      Praia(4,'Praia do Gonzaguinha', 'img/imgPraiaG.png', false, 'Pegue o ônibus 101 na Rodoviária de São Vicente. Após isso, desça na parada Praia do Gonzaguinha e siga as placas instrucionais, caminhando para a praia.', 'https://maps.app.goo.gl/nqRALLGEPhjw1eBk7', 'São Vicente'),
      Praia(5,'Praia da Maresia', 'img/PraiaM.png', true,  'O acesso à praia é pela BR-101 (Rodovia Rio-Santos), que segue ao longo de toda a faixa de areia e divide a zona comercial e as pousadas da praia. Ao longo da rodovia há vagas para estacionamento, assim como nas ruas adjacentes.',  'https://maps.app.goo.gl/Q72u7neMmMgEWEg26', 'São Sebastião'),
      Praia(6,'Praia do Bonete', 'img/PraiaB.png', true,   'O acesso à praia pode ser feito a partir da praia de Picinguaba, onde é possível deixar o carro em um estacionamento próximo. Em seguida, há uma trilha que leva até a praia, com duração de cerca de 1h30 a 2h de caminhada. A trilha é bem marcada, mas recomenda-se ir com calçados adequados.',   'https://maps.app.goo.gl/GjXi11td53Z4yMX86', 'Ilhabela'),
      Praia(7,'Praia do Prumirim', 'img/PraiaP.png', true, 'O acesso à praia é pela BR-101 (Rodovia Rio-Santos), que segue ao longo de toda a faixa de areia e divide a zona comercial e as pousadas da praia. Ao longo da rodovia há vagas para estacionamento, assim como nas ruas adjacentes.', 'https://maps.app.goo.gl/ev2tsLc7Z8UcCRkb7', 'Ubatuba'),
      Praia(8,'Praia do Gonzaga', 'img/PraiaG1.png', true, 'A Praia do Gonzaga está localizada no centro de Santos. O acesso é feito pela Avenida da Orla, onde há diversos estacionamentos nas ruas adjacentes. A praia é bastante urbanizada, com quiosques e restaurantes ao longo da orla, facilitando o acesso a serviços.', 'https://maps.app.goo.gl/kJVKCq3N315k1Yk5A', 'Santos'),
      Praia(9,'Balneário Adriana', 'img/PraiaA.png', true, 'Para chegar ao Balneário Adriana, você deve seguir pela Rodovia BR-116 até a entrada para a Ilha Comprida. Após a travessia da balsa, siga pela SP-55 até encontrar as placas que indicam o acesso ao Balneário Adriana. Há estacionamento disponível nas proximidades da praia.', 'https://www.google.com/maps/place/Balneário+Adriana,+Ilha+Comprida+-+SP,+11925-000/@-24.7255487,-47.54731,15z/data=!3m1!4b1!4m6!3m5!1s0x94daa2177deba7f5:0xa1c67b54591525!8m2!3d-24.7264807!4d-47.5361355!16s%2Fg%2F1ptyfppsh?entry=ttu&g_ep=EgoyMDI0MDkwNC4wIKXMDSoASAFQAw%3D%3D', 'Ilha Comprida'),
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
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const praiaInfo(), settings: RouteSettings(arguments: praias[index])));},
                              icon: const Icon(Icons.location_on),
                              label: const Text('Clique para localização')),
                        ],
                      )
                    ],
                  ),
          );
      }
  }


