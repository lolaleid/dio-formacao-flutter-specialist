// ignore_for_file: file_names

class Aluno{
  String _nome = '';
  final List<double> _notas = [];

  Aluno(String nome){
    _nome = nome;
  }

  String getNome() => _nome;

  void setNome(String nome) => _nome = nome;

  List<double> getNotas() => _notas;

  void adicionarNota(double nota) => _notas.add(nota);

  double retornarMedia(){
    double totalNotas = 0;
    for (var nota in _notas) {
      totalNotas = totalNotas + nota;
    }
    double media = totalNotas / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte){
    return retornarMedia() >= notaCorte;
  }
}