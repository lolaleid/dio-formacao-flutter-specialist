// ignore_for_file: file_names

class Aluno{
  String _nome = '';
  final List<double> _notas = [];

  Aluno(this._nome);

  String getNome() => _nome;

  void setNome(String nome) => _nome = nome;

  List<double> getNotas() => _notas;

  void adicionarNota(double nota) => _notas.add(nota);

  double retornarMedia(){
    double media = 
      _notas.reduce((value, element) => value + element) / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte){
    return retornarMedia() >= notaCorte;
  }
}