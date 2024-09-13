import 'package:cleany_beaches/Regiao.dart';

class Municipio
{
  final int Id;
  final String Nome;
  final int QtdPraia;
  final Regiao regiao;

  const Municipio(this.Id, this.Nome, this.QtdPraia, this.regiao);
}

const Municipios = [
  ['', 0, ''],
];