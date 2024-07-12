import 'dart:convert';
import 'dart:io';

class ConsoleUtils{

  static String lerString(){
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static String lerStringComTexto(String texto){
    print(texto);
    return lerString();
  }  

  static double? lerDouble(){
    String value = lerString();
    try{
      return double.parse(value);
    }catch(e){
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto){
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida){
    do{
      try {
        String value = lerStringComTexto(texto).toLowerCase();
        if(value == valorSaida.toLowerCase()){
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    }while(true);
  }

}