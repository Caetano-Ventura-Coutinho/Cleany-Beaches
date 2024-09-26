class Regiao
{
  final int Id;
  final String Nome;
  final int QtdMun;

  const Regiao(this.Id, this.Nome, this.QtdMun);

  String queryname(String nome){
    const List<Regiao> regiao = [
      Regiao(1, 'Litoral Norte', 5),
      Regiao(2, 'Baixada Santista', 9),
      Regiao(3, 'Litoral Sul', 3),
    ];
    for(int i = 0; i < 3; i++){
      if(regiao[i].Nome == nome){
        return regiao[i].Nome;
      }
    }
    return regiao[0].Nome;
  }
}