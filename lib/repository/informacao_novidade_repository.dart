import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../model/informacao_novidade_model.dart';

class InformacaoNovidadeRepository {
  static List<InformacaoNovidadeModel> informativoNovidade = [
    InformacaoNovidadeModel(
      title: 'Nova funcionalidade de usuários',
      subtitle:
          'Agora você pode visualizar os usuários dentro da tela de perfil de aplicativo clicando no botão abaixo.',
      icon: Icon(FontAwesome.hand_holding_dollar_solid),
      platform: 'Portal',
    ),
    InformacaoNovidadeModel(
      title: 'Filtro nas metas',
      subtitle:
          'Na tela de metas agora você pode procurar por promotor, meta, produto ou período.',
      icon: const Icon(FontAwesome.mobile_screen_button_solid,
          color: Colors.white),
      platform: 'Aplicativo',
    ),
  ];
}
