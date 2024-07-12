
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/enviar_notificacao.dart';

void main(List<String> arguments) {

  var pessoaFisica1 = PessoaFisica('Pessoa A', 'Rua A', TipoNotificacao.sms, '11122233345');
  pessoaFisica1.setCpf('123');
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica('Empresa A', 'Rua B', TipoNotificacao.email, '11222333444456');
  print(pessoaJuridica1);
  
  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
