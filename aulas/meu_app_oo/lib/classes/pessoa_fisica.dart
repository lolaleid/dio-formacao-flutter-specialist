// ignore_for_file: file_names

import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa{
  String _cpf = '';

  PessoaFisica(super.nome, super.endereco, TipoNotificacao tipoNotificacao, String cpf)
  :super(tipoNotificacao: tipoNotificacao){
    _cpf = cpf;
  }

  String getCpf() => _cpf;

  void setCpf(String cpf) => _cpf = cpf;

  @override
  String toString(){
    return {
      'Tipo: PF, '
      'Nome': super.getNome(), 
      'Endereço': super.getEndereco(),
      'CPF': _cpf
    }.toString();
  }
}