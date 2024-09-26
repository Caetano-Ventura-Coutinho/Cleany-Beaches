
class Municipio
{
  final int Id;
  final String Nome;
  final int QtdPraia;
  final String regiao;

  const Municipio(this.Id, this.Nome, this.QtdPraia, this.regiao);

List registrar(){
  const List <Municipio>  municipios = [
    Municipio(1, 'Ubatuba', 81, 'Litoral Norte'),
    Municipio(2, 'Santos', 7, 'Baixada Santista'),
    Municipio(3, 'São Sebastião', 26, 'Litoral Norte'),
    Municipio(4, 'Ilha Comprida', 4, 'Litoral Sul'),
    Municipio(5, 'São Vicente', 6, 'Baixada Santista'),
    Municipio(6, 'Ilhabela', 42, 'Litoral Norte'),
  ];
  
  return municipios;
}

}
