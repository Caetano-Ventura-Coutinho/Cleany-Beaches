import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Praia
{
  final int Id;
  final String Nome;
  final String Img; 
  final bool Condicao; 
  final String Rota; 
  final String LinkMaps; 


  const Praia(this.Id, this.Nome, this.Img, this.Condicao, this.Rota, this.LinkMaps);

  AbrirLink(String Link){
  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(Link))) {
      throw Exception('Could not launch $Link');
    }
    else{
      
    }
  }

}
}