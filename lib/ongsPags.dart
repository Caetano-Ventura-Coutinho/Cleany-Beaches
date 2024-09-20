import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

          );}
  
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

  Widget _VerificarEmailB(String Email){
    if(Email != ''){
      return IconButton(onPressed: () => launchUrlString(Email), icon: const Icon(Icons.email, color: Colors.black, size: 40));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Endereço de Email');
      }, icon: const Icon(Icons.email, color: Colors.black, size: 40));
    }
  }
  Widget _VerificarInstaB(String Insta){
    if(Insta != ''){
      return IconButton(onPressed: () => launchUrlString(Insta), icon: _imgToIconB('Insta'));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Instagram');
      }, icon: _imgToIconB('Insta'));
    }
  }

  ImageIcon _imgToIconB(String v){
    if(v == 'Insta'){
      return const ImageIcon(AssetImage('img/instagram.png'), size: 40, color: Colors.black,); 
    }
    else{
      return const ImageIcon(AssetImage('img/facebook.png'), size: 40, color: Colors.black); 
    }
  }

  Widget _VerificarFaceB(String Face){
    if(Face != ''){
      return IconButton(onPressed: () => launchUrlString(Face), icon: _imgToIconB('Face'));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Facebook');
      }, icon: _imgToIconB('Face'));
    } 
  }

  Widget _VerificarTelB(int Tel){
    if(Tel != 0){
      return IconButton(onPressed: () => launchUrlString('tel://$Tel'), icon: const Icon(Icons.phone, size: 40, color: Colors.black,),);
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Telefone');
      }, icon: const Icon(Icons.phone, size: 40, color: Colors.black,),);
    } 
  }

  Widget _VerificarSiteB(String Site){
    if(Site != ''){
      return IconButton(onPressed: () => launchUrlString(Site), icon: const Icon(Icons.web, color: Colors.black, size: 40));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('WebSite');
      }, icon: const Icon(Icons.web, color: Colors.black, size: 40));
    } 
  }

  Widget _VerificarEmail(String Email){
    if(Email != ''){
      return IconButton(onPressed: () => launchUrlString(Email), icon: const Icon(Icons.email, color: Colors.white, size: 40));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Endereço de Email');
      }, icon: const Icon(Icons.email, color: Colors.white, size: 40));
    }
  }
  Widget _VerificarInsta(String Insta){
    if(Insta != ''){
      return IconButton(onPressed: () => launchUrlString(Insta), icon: _imgToIcon('Insta'));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Instagram');
      }, icon: _imgToIcon('Insta'));
    }
  }

  ImageIcon _imgToIcon(String v){
    if(v == 'Insta'){
      return const ImageIcon(AssetImage('img/instagram.png'), size: 40, color: Colors.white,); 
    }
    else{
      return const ImageIcon(AssetImage('img/facebook.png'), size: 40, color: Colors.white); 
    }
  }

  Widget _VerificarFace(String Face){
    if(Face != ''){
      return IconButton(onPressed: () => launchUrlString(Face), icon: _imgToIcon('Face'));
    }
    else{
      return IconButton(onPressed: (){
      _Aviso('Facebook');
      }, icon: _imgToIcon('Face'));
    } 
  }

  Widget _VerificarTel(int Tel){
    if(Tel != 0){
      return IconButton(onPressed: () => launchUrlString('tel://$Tel'), icon: const Icon(Icons.phone, size: 40, color: Colors.white,),);
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('Telefone');
      }, icon: const Icon(Icons.phone, size: 40, color: Colors.white,),);
    } 
  }


  Widget _VerificarSite(String Site){
    if(Site != ''){
      return IconButton(onPressed: () => launchUrlString(Site), icon: const Icon(Icons.web, color: Colors.white, size: 40));
    }
    else{
      return IconButton(onPressed: (){
        _Aviso('WebSite');  
      }, icon: const Icon(Icons.web, color: Colors.white, size: 40));
    } 
  }

  Widget _initV(ONG ongs){
    if(ongs.corText == Colors.black){
     return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [_VerificarSiteB(ongs.Site),
              _VerificarInstaB(ongs.Instagram),
              _VerificarFaceB(ongs.Facebook),
              _VerificarEmailB(ongs.Email),
              _VerificarTelB(ongs.Telefone)]); 
    }
    else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [_VerificarSite(ongs.Site),
              _VerificarInsta(ongs.Instagram),
              _VerificarFace(ongs.Facebook),
              _VerificarEmail(ongs.Email),
              _VerificarTel(ongs.Telefone)]);
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
                  Text('- Atua no ' + ongs.atuacao, style: TextStyle(color: ongs.corText),),
                ],
              ),
            ],
          ),
          _initV(ongs),
        ],
      ),
    );
  }                  
}