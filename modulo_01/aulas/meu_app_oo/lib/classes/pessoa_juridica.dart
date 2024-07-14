// ignore_for_file: file_names

import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa{
  String _cnpj = '';

  PessoaJuridica(super.nome, super.endereco, TipoNotificacao tipoNotificacao, String cnpj)
  :super(tipoNotificacao: tipoNotificacao){
    _cnpj = cnpj;
  }

  String getCnpj() => _cnpj;

  void setCnpj(String cnpj) => _cnpj = cnpj;

  @override
  String toString(){
    return{
      'Tipo: PJ, '
      'Nome': super.getNome(),
      'Endereço': super.getEndereco(),
      'CNPJ': getCnpj()
    }.toString();
  }
  

}