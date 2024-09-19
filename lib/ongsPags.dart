import 'package:cleany_beaches/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cleany_beaches/Praia.dart';
import 'package:cleany_beaches/ong.dart';
import 'package:url_launcher/url_launcher_string.dart';

void ongsPags() {
  runApp(const MaterialApp (title: "Cleany Beaches",
  home: ongsPag(),));
}

class ongsPag extends StatefulWidget {
  const ongsPag({super.key});


  @override
  ongsPAG createState() => ongsPAG();
}

const List<ONG> ongs = [
  ONG(1, 'ONG Esmeralda', 'img/imgPraiaG.png', 'https://www.instagram.com/ong.esmeralda/', '', '', 'https://www.ongesmeralda.com.br', 0, Color.fromARGB(255, 217, 209, 117), Colors.black, 'Litoral Norte'),
  ONG(2, 'Sea Shepherd Brasil', 'img/imgPraiaG.png', 'https://www.instagram.com/seashepherdbrasil/', '', '', 'https://seashepherd.org.br/sea-shepherd-brasil/', 0, Color.fromARGB(255, 128, 128, 128), Colors.white, 'Litoral Norte'),
  ONG(3, 'ONG Ecomov', 'img/imgPraiaG.png', '', 'https://www.facebook.com/ecomov/?locale=pt_BR', 'orgecomov@gmail.com', '', 0, Color.fromARGB(255, 5, 32, 123), Colors.white, 'Baixada Santista'),
  ONG(4, 'Surf Limpeza', 'img/imgPraiaG.png', 'https://www.instagram.com/surflimpeza/?hl=pt', 'https://www.facebook.com/surflimpeza/', 'surfrecycle@gmail.com', '', 0, Color.fromARGB(255, 98, 139, 149), Colors.white, 'Baixada Santista'),
  ONG(5, 'ONG Formiguinhas da Praia', 'img/imgPraiaG.png', 'https://www.instagram.com/formiguinhasdapraia/', 'https://www.facebook.com/p/Formiguinhas-da-Praia-100083835773071/', 'formiguinhasdapraia@gmail.com', '', 13997284132, Color.fromARGB(255, 0, 88, 185), Colors.white, 'Litoral Sul'),
  ONG(6, 'Instituto Terra&Mar', 'img/imgPraiaG.png', 'https://www.instagram.com/institutoterraemar/', 'https://www.facebook.com/institutoterraemar', 'terraemar.sseb@gmail.com', '', 12981254317, Color.fromARGB(255, 0, 26, 113), Colors.white, 'Litoral Norte'),
  ONG(7, 'Mar Limpo', 'img/imgPraiaG.png', 'https://www.instagram.com/mar_limpo', 'https://www.facebook.com/MarLimpoBrasil/', 'contato@marlimpo.org.br', '', 12981684217, Colors.white, Colors.black, 'Litoral Norte'),
  ONG(8, 'Instituto EcoFaxina', 'img/imgPraiaG.png', 'https://www.instagram.com/ecofaxina/', 'https://www.facebook.com/ecofaxina?_rdc=2&_rdr','contato@institutoecofaxina.org.br', '', 1333012391, Color.fromARGB(255, 0, 107, 163), Colors.white, 'Baixada Santista'),
];

class ongsPAG extends State<ongsPag> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 250, 206),
          //Body
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Material(
                      color: const Color.fromARGB(255, 255, 250, 206),
                      child: Expanded(
                      child:ListView.builder(
                      itemCount: ongs.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index){
                        return _OngLista(ongs[index]);
                      }
                    )
                  ))
                ],
              ),
            )
          )
          
        )

          );}

  Widget _VerificarEmail(String Email){
    if(Email != ''){
      return 
      IconButton(onPressed: () => launchUrlString(Email), icon: Icon(Icons.email, color: Colors.black));
    }
    else{
      return Text('');
    }
  }
  Widget _VerificarInsta(String Insta){
    if(Insta != ''){
      return IconButton(onPressed: () => launchUrlString(Insta), icon: _imgToIcon('Insta'));
    }
    else{
      return Text('');
    }
  }

  ImageIcon _imgToIcon(String v){
    if(v == 'Insta'){
      return ImageIcon(AssetImage('img/instagram.png'), size: 24, color: Colors.black,); 
    }
    else{
      return ImageIcon(AssetImage('img/facebook.png'), size: 24, color: Colors.black); 
    }
  }

  Widget _VerificarFace(String Face){
    if(Face != ''){
      return IconButton(onPressed: () => launchUrlString(Face), icon: _imgToIcon('Face'));
    }
    else{
      return Text('');
    } 
  }
  Widget _VerificarSite(String Site){
    if(Site != ''){
      return IconButton(onPressed: () => launchUrlString(Site), icon: Icon(Icons.web, color: Colors.black ));
    }
    else{
      return Text('');
    } 
  }

  Widget _OngLista(ONG ongs){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 9 / 100, bottom: MediaQuery.of(context).size.height * 3 / 100),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        color: ongs.corFundo,
        
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(ongs.Img),
              Column(
                children: [
                  Text(ongs.Nome, style: TextStyle(color: ongs.corText, fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('- atua no ' + ongs.atuacao, style: TextStyle(color: ongs.corText),),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _VerificarSite(ongs.Site),
              _VerificarInsta(ongs.Instagram),
              _VerificarFace(ongs.Facebook),
              _VerificarEmail(ongs.Email),
            ],
          )
        ],
      ),
    );
  }          
          
}