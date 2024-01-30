import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'repository/informacao_container_repository.dart';
import 'widgets/informativo_container.dart';
import 'widgets/informacao_novidade.dart';
import 'widgets/menu_lateral.dart';
import 'widgets/widget_dialog_perfil.dart';

class PainelPage extends StatefulWidget {
  const PainelPage({Key? key}) : super(key: key);

  @override
  State<PainelPage> createState() => _PainelPageState();
}

class _PainelPageState extends State<PainelPage> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            const MenuLateral(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 24,
                  right: 24,
                  bottom: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seja bem-vindo ao Claro Tools',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Navegue pelo menu lateral',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 278,
                              height: 72,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 6),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('images/avatar_perfil.png'),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    width: 190,
                                    height: 36,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Pedro Álvares Cabral',
                                          style: TextStyle(
                                            color: Color(0xFF1E1E1E),
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          'pedro.cabral@redeinova.net',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 14,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                          barrierColor:
                                              Colors.black.withOpacity(0.3),
                                          context: context,
                                          builder: (BuildContext context) {
                                            return const WidgetDialogPerfil();
                                          },
                                        );
                                      },
                                      customBorder:
                                          const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      splashColor: Colors.transparent,
                                      child: const Icon(
                                        Icons.expand_more_outlined,
                                        color: Color(0xFF000000),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 16),
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    const InformationContainer(),
                    const Padding(
                      padding: EdgeInsets.only(top: 24, bottom: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Novidades',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'Veja o que há de novo no Claro Tools',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const InformacaoNovidade(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
