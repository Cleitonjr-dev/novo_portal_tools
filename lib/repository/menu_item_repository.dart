import 'package:flutter/material.dart';
import '../model/menu_item_model.dart';

class MenuRepository {
  static List<MenuItem> menuItems = [
    MenuItem(
      title: 'title',
      subTitle: 'subTitle',
      icon: Icons.dashboard_outlined,
    )
    // Adicione mais itens conforme necessário
  ];
}
