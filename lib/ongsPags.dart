import 'package:flutter/material.dart';
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
  ONG(1, 'ONG Esmeralda', 'img/imgONGE.png', 'https://www.instagram.com/ong.esmeralda/', '', '', 'https://www.ongesmeralda.com.br', 0, Color.fromARGB(255, 217, 209, 117), Colors.black, 'Litoral Norte'),
  ONG(2, 'Sea Shepherd Brasil', 'img/imgONGSS.png', 'https://www.instagram.com/seashepherdbrasil/', '', '', 'https://seashepherd.org.br/sea-shepherd-brasil/', 0, Color.fromARGB(255, 128, 128, 128), Colors.white, 'Litoral Norte'),
  ONG(3, 'ONG Ecomov', 'img/imgONGeco.png', '', 'https://www.facebook.com/ecomov/?locale=pt_BR', 'https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=CllgCJfscpJPHnGVzbgNlfMSkZHzzpnQshdhXwkPLlZgDllnTkthZCnGrSTQDLhnvDWCJPHbwjV', '', 0, Color.fromARGB(255, 5, 32, 123), Colors.white, 'Baixada Santista'),
  ONG(4, 'Surf Limpeza', 'img/imgONGSL.png', 'https://www.instagram.com/surflimpeza/?hl=pt', 'https://www.facebook.com/surflimpeza/', 'https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=GTvVlcSGMvbcSJQMHrSCXNlkkqjtDQQShJxKjpzkMgBVFFJsxPgttWHDQVzdwNvgFJTndzHxrzDPB', '', 0, Color.fromARGB(255, 98, 139, 149), Colors.white, 'Baixada Santista'),
  ONG(5, 'ONG Formiguinhas da Praia', 'img/imgONGF.png', 'https://www.instagram.com/formiguinhasdapraia/', 'https://www.facebook.com/p/Formiguinhas-da-Praia-100083835773071/', 'https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=HfxTvNsgmcMmkdngtFSCVZlXsjBlxCRZvNTKtDFsvfJSpMJzfTClfVjmjWhgmswrZPPZZNBqJZZQHKStbpkTDFspRtjDzBgTcGtRZrjWLCnrNLnDMTBVTKsWcHPztPcdvcLPTXDXgfCQCHsgtdrpRBGlVKchrnjJcdrlgg', '', 5513997284132, Color.fromARGB(255, 0, 88, 185), Colors.white, 'Litoral Sul'),
  ONG(6, 'Instituto Terra&Mar', 'img/imgONGITM.png', 'https://www.instagram.com/institutoterraemar/', 'https://www.facebook.com/institutoterraemar', 'https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=DmwnWrRrmJblVBvnJgHrrNZmmrjpKfbTDHwFzDZqDtCGRkGfdjpQtwqZCqvbjFVHhXRHxDZxMJLb', '', 5512981254317, Color.fromARGB(255, 0, 26, 113), Colors.white, 'Litoral Norte'),
  ONG(7, 'Mar Limpo', 'img/imgONGML.png', 'https://www.instagram.com/mar_limpo', 'https://www.facebook.com/MarLimpoBrasil/', 'https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=CllgCJfmrkhLbwpTMKCWRkgQgxrPvVmcJkCTLznbfSWrnzDzpBGMrSnNCNpdMnrQNrJMtXjDnfg', '', 5512981684217, Colors.white, Colors.black, 'Litoral Norte'),
  ONG(8, 'Instituto EcoFaxina', 'img/imgONGIEco.png', 'https://www.instagram.com/ecofaxina/', 'https://www.facebook.com/ecofaxina?_rdc=2&_rdr','https://mail.google.com/mail/u/0/?hl=pt-BR#inbox?compose=CllgCJlJVSLKQSwqNJlnbWZvXGBtFPJBBcjFGHgDvVRmZRkXshCdVGgxVSlnpmfxndJLCvDKdjB', '', 551333012391, Color.fromARGB(255, 0, 107, 163), Colors.white, 'Baixada Santista'),
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
      );
    }
  
  void _Aviso(String Rede){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Essa ONG não possui $Rede'),
          actions: <Widget>[
            TextButton(
              child: const Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  dynamic _Icone(int id, Color cor, dynamic icone){
    if(id == 0){
      return ImageIcon(const AssetImage('img/instagram.png'), size: 40, color: cor);
    }
    else if(id == 1){
      return ImageIcon(const AssetImage('img/facebook.png'), size: 40, color: cor); 
    }
    else{
      return Icon(icone, color: cor, size: 40);
    }
  }

  Widget _Rede(String g, String rede, dynamic icone, Color cor, int id){
    if(g != '' && g != 'tel://0'){
      return IconButton(onPressed: () => launchUrlString(g), icon: _Icone(id, cor, icone));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso(rede);  
      }, icon: _Icone(id, cor, icone));
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
              Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 20, right: MediaQuery.of(context).size.width / 10),
                child: Image.asset(ongs.Img, width: MediaQuery.of(context).size.width * 7 / 40),
              ),
              Column(
                children: [
                  Text(ongs.Nome, style: TextStyle(color: ongs.corText, fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('- Atua no ${ongs.atuacao}', style: TextStyle(color: ongs.corText),),
                ],
              ),
            ],
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           _Rede(ongs.Site, 'WebSite', Icons.web, ongs.corText, 3),
           _Rede(ongs.Instagram, 'Instagram', null, ongs.corText, 0),
           _Rede(ongs.Facebook, 'Facebook', null, ongs.corText, 1),
           _Rede(ongs.Email, 'Endereço de Email', Icons.email, ongs.corText, 3),
           _Rede('tel://${ongs.Telefone}', 'Telefone', Icons.phone, ongs.corText, 3)
           ])
        ],
      ),
    );
  }                  
}