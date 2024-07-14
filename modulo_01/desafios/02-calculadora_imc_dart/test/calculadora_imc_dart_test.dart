import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:test/test.dart';


void main() {

  group('Testa cálculo do imc', (){
    test('Testa o cálculo do IMC com nome, peso e altura', () {
      Pessoa pessoa = Pessoa(nome: 'leidiane', peso: 60, altura: 1.60);
      double imc = pessoa.calcularIMC();
      expect(imc, 24.0);
    });

    test('Testa o cálculo do IMC sem nome, com peso e altura', () {
      Pessoa pessoa = Pessoa(peso: 60, altura: 1.60);
      double imc = pessoa.calcularIMC();
      expect(imc, 24.0);
    });
  });
}
