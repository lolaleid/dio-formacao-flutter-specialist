import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:meu_app_testes/via_cep.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateMocks([MockViaCEP])
void main() {
  test('Calcula o valor do produto com desconto em valor', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test('Calcula o valor do produto com desconto em porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), equals(850));
  });

  test('Calcula o valor do produto zerado com desconto em valor',
   () {
    expect(() => app.calcularDesconto(0, 150, false), 
    throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o valor do produto com desconto zerado',
   () {
    expect(() => app.calcularDesconto(1000, 0, true),
    throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Calcula o valor do produto com desconto', () {
    Map<Map<String, dynamic>, double> valuesToTest = {
      {'valor': 1000.00, 'desconto': 150.00, 'percentual': false}: 850,
      {'valor': 1000.00, 'desconto': 15.00, 'percentual': true}: 850,
    };
    
    valuesToTest.forEach((values, expected){
      test('Entrada: $values, Esperado:$expected', () {
        expect(
          app.calcularDesconto(
            values['valor'], 
            values['desconto'], 
            values['percentual']), 
            equals(expected));
        });
      });      
  });

  group('Calcula o valor do produto informando valores zerados', () {
    Set<Map<String, Object>> valuesToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };
    for (var values in valuesToTest) {
      test('Entrada: $values', () {
        expect(
          () => app.calcularDesconto(
            double.parse(values['valor'].toString()),
            double.parse(values['desconto'].toString()), 
            values['percentual'] == true), 
            throwsA(TypeMatcher<ArgumentError>()));
        });
      } 
  });

  test('Testar conversão para uppercase', (){
    expect(app.convertToUpper('dio'), equals('DIO'));
  });

  test('Valor maior que 50', () {
    expect(app.retornaValor(50), greaterThanOrEqualTo(50));
  });

  test('Retornar CEP', () async{
    MockViaCEP mockViaCEP = MockViaCEP();
    when(mockViaCEP.retornarCEP('01001000')).thenAnswer((realInvocation)=>Future.value({
       "cep": "01001-000",
        "logradouro": "Praça da Sé",
        "complemento": "lado ímpar",
        "bairro": "Sé",
        "localidade": "São Paulo",
        "uf": "SP",
        "ibge": "3550308",
        "gia": "1004",
        "ddd": "11",
        "siafi": "7107"
    }));


    var body = await mockViaCEP.retornarCEP('01001000');
    expect(body['bairro'], equals('Sé'));
  });
}

class MockViaCEP extends Mock implements ViaCep{
  
}
