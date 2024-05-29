// ignore_for_file: file_names

import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa{
  String _nome = '';
  String _endereco = '';
  String _email = '';
  String _celular = '';
  String _token = '';
  TipoNotificacao _tipoNotificacao = TipoNotificacao.nenhum;

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}){
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  String getNome() => _nome;

  void setNome(String nome){
    _nome = nome;
  }

  String getEndereco() => _endereco;  

  void setEndereco(String endereco){
    _endereco = endereco;
  }

  String getEmail() => _email;

  void setEmail(String email){
    _email = email;
  }

  String getCelular() => _celular;

  void setCelular(String celular){
    _celular = celular;
  }

  String getToken() => _token;

  void setToken(String token){
    _token = token;
  }

  TipoNotificacao getTipoNotificacao() => _tipoNotificacao;

  void setTipoNotificacao(TipoNotificacao tipoNotificacao){
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString(){
    return {
      'Nome': getNome(), 
      'Endereço': getEndereco(),
      'Tipo de Notificação': getTipoNotificacao(),
    }.toString();
  }
  
}