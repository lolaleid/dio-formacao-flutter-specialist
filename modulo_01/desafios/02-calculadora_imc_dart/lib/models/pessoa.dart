class Pessoa{
  late String nome;
  late double peso;
  late double altura;
  late double imc;

  Pessoa({this.nome = 'Nome Padrão', required this.peso, required this.altura});

  double calcularIMC(){
    imc = (peso/(altura*altura)).ceilToDouble();
    return imc;
  }

  void classificarIMC(){
    switch (imc) {
      case <16:
        print('A pessoa $nome tem imc $imc e está classificada em Magreza Grave');
        break;
      case <17:
        print('A pessoa $nome tem imc $imc e está classificada em Magreza Moderada');
        break;
      case <18.5:
        print('A pessoa $nome tem imc $imc e está classificada em Magreza Leve');
        break;
      case <25:
        print('A pessoa $nome tem imc $imc e está classificada em Saudável');
        break;
      case <30:
        print('A pessoa $nome tem imc $imc e está classificada em Sobrepeso');
        break;
      case <35:
        print('A pessoa $nome tem imc $imc e está classificada em Obesidade Grau I');
        break;
      case <40:
        print('A pessoa $nome tem imc $imc e está classificada em Obesidade Grau II');
        break;
      case >=40:
        print('A pessoa $nome tem imc $imc e está classificada em Obesidade Grau III');
        break;
    }
  }
}