import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../model/informacao_container_model.dart';

class InformacaoContainerRepository {
  static List<InformacaoContainerModel> informativo = [
    InformacaoContainerModel(
      icon: const Icon(EvaIcons.people_outline, color: Color(0xFFD52B1E)),
      indicador: '59',
      porcentagem: '/80%',
      title: 'Usuários ativos',
      subtitle: 'Usuários em relação ao total cadastrado',
    ),
    InformacaoContainerModel(
      icon: const Icon(Icons.campaign_outlined,
          size: 28, color: Color(0xFFD52B1E)),
      indicador: '16',
      title: 'Comunicados',
      subtitle: 'Comunicados enviados até o momento',
    ),
    InformacaoContainerModel(
      icon:
          const Icon(BoxIcons.bxl_android, size: 28, color: Color(0xFFD52B1E)),
      indicador: '2.6.7',
      title: 'Versão do aplicativo',
      subtitle: 'Última atualização do aplicativo',
    ),
  ];
}
