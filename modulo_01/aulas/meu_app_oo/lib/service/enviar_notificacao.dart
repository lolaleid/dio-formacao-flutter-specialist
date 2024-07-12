import 'package:meu_app_oo/classes/pessoa.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/impl/notificacao_email.dart';
import 'package:meu_app_oo/service/impl/notificacao_push.dart';
import 'package:meu_app_oo/service/impl/notificacao_sms.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class EnviarNotificacao{
  
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa){
    switch(pessoa.getTipoNotificacao()){
      case TipoNotificacao.sms:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.pushNotification:
        notificacao = NotificacaoPush();
        break;
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      default:
        break;
    }
    if(notificacao != null){
      notificacao!.enviarNotificacao(pessoa);
    }    
  }
}