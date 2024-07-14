import 'package:http/http.dart' as http;
import 'dart:convert';

class ViaCep{
  retornarCEP(String cep) async {
    var uri = Uri.http('viacep.com.br','/ws/01001000/json/');
    var response = await http.get(uri);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    return decodedResponse;
  }
}

