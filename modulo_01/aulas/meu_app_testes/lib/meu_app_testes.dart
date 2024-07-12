double calcularDesconto(double valor, double desconto, bool percentual){
  if(valor <= 0){
    throw ArgumentError('O valor do produto não deve ser zero');
  }
  if(desconto <= 0){
    throw ArgumentError('O valor do desconto não deve ser zero');
  }
  if(percentual){
    return valor - (valor * desconto) / 100;
  }
  return valor - desconto;
}

String convertToUpper(String texto){
  return texto.toUpperCase();
}

double retornaValor(double valor){
  return valor;
}