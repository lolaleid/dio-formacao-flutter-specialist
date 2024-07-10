import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/utils/console_utils.dart';

void execute(){
  print('Bem vindo ao sistema de cálculo de IMC');
  String nome = ConsoleUtils.lerStringComTexto('Digite o seu nome: ');
  if(nome.trim().isEmpty){
    throw ArgumentError('O nome não deve ser vazio!');
  }
  
  double? altura = ConsoleUtils.lerDoubleComTexto('Digite sua altura: ');
  if(altura!.isNaN || altura < 1 || altura > 4){
    throw ArgumentError('O valor atribuído a altura não é válido! Digite um valor entre 1 e 4');
  }

  double? peso = ConsoleUtils.lerDoubleComTexto('Digite seu peso: ');
  if(peso!.isNaN || peso < 13 || altura > 300){
    throw ArgumentError('O valor atribuído ao peso não é válido! Digite um valor entre 1 e 4');
  }

  Pessoa pessoa1 = Pessoa(nome: nome, peso: peso, altura: altura);

  pessoa1.calcularIMC();

  pessoa1.classificarIMC();

}