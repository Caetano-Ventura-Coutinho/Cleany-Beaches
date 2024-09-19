import 'package:flutter/material.dart';

class ONG
{
  final int Id;
  final String Nome;
  final String Img; 
  final String Instagram; 
  final String Facebook; 
  final String Email; 
  final String Site; 
  final int Telefone;
  final Color corFundo;
  final Color corText;
  final String atuacao;

  const ONG(this.Id, this.Nome, this.Img, this.Instagram, this.Facebook, this.Email, this.Site, this.Telefone, this.corFundo, this.corText, this.atuacao);
}