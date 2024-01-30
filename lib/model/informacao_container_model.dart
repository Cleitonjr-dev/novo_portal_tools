import 'package:flutter/material.dart';

class InformacaoContainerModel {
  Widget icon;
  String indicador;
  String? porcentagem;
  String title;
  String subtitle;

  InformacaoContainerModel({
    required this.icon,
    required this.indicador,
    this.porcentagem,
    required this.title,
    required this.subtitle,
  });
}
