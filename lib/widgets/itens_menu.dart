import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ItensMenu extends StatefulWidget {
  const ItensMenu({super.key});

  @override
  State<ItensMenu> createState() => _ItensMenuState();
}

class _ItensMenuState extends State<ItensMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 32, right: 32),
          //color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Opacity(
                opacity: 0.50,
                child: Text(
                  'Menu principal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Container(
                  width: 248,
                  height: 36,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Colors.red.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Visão geral',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                iconColor: Colors.white,
                //backgroundColor: Colors.amber,
                //collapsedBackgroundColor: Colors.pink,
                collapsedIconColor: Colors.white,
                title: const Opacity(
                  opacity: 0.50,
                  child: Text(
                    'Ferramentas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ),
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.campaign_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Comunicados",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.schedule_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Jornada",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.adjust_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Metas",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.find_in_page_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Pesquisa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.shopping_cart_checkout_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Vendas",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.store,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "PDV's",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.directions_car,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Controle de KM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.paid_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Financeiro",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ExpansionTile(
                    iconColor: Colors.white,
                    leading: const Icon(
                      LineAwesome.cube_solid,
                      size: 24,
                      color: Colors.white,
                    ),
                    collapsedIconColor: Colors.white,
                    title: const Text(
                      'Estoque',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                    children: [
                      ListTile(
                        title: const Text(
                          "Movimentações",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Rastreamento ICCID",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Almoxarifados",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Produtos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Grupos de produtos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Grupos de metas",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Forma de pagamento",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Recargas",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text(
                          "Consulta",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                iconColor: Colors.white,
                //backgroundColor: Colors.amber,
                //collapsedBackgroundColor: Colors.pink,
                collapsedIconColor: Colors.white,
                title: const Opacity(
                  opacity: 0.50,
                  child: Text(
                    'Configurações',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                  ),
                ),
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.manage_accounts_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Cadastros",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.group_work_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Grupos de Usuários",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.badge_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Cargos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_box_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Perfis de Aplicativo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.south_america,
                      size: 24,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Regionais",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
