import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:novo_portal/widgets/itens_menu.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  State<MenuLateral> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<MenuLateral> {
  List<String> dropdownItems = ['TODOS', 'RED', 'PROMOTOR'];
  String selectedValue = 'TODOS';
  double containerWidth = 0;
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    containerWidth = isExpanded
        ? MediaQuery.of(context).size.width * 0.166
        : MediaQuery.of(context).size.width * 0.10;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: containerWidth,
      height: MediaQuery.of(context).size.height,
      child: GlassmorphicContainer(
        width: containerWidth,
        height: MediaQuery.of(context).size.height,
        borderRadius: 0,
        border: 0,
        blur: 4,
        linearGradient: LinearGradient(
          colors: [
            const Color(0xFF242425).withOpacity(0.80),
            const Color(0xFF242425).withOpacity(0.80),
          ],
        ),
        borderGradient: LinearGradient(
          colors: [
            const Color(0xFF242425).withOpacity(0.80),
            const Color(0xFF242425).withOpacity(0.80),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: isExpanded ? 235 : 100,
                      child: isExpanded
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'images/Logo_Claro_tools.png',
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/icon_logo.png',
                                ),
                              ],
                            ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Ink(
                      width: 32,
                      height: 32,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD52B1E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            // Toggle the expansion state
                            isExpanded = !isExpanded;
                          });
                        },
                        customBorder: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        splashColor: Colors.transparent,
                        child: Icon(
                          isExpanded
                              ? Icons.arrow_left_outlined
                              : Icons.arrow_right_outlined,
                          color: const Color(0xFFFFFFFF),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFE1E3E6),
              thickness: 1,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 24, bottom: 24, left: 8, right: 8),
              child: Container(
                width: 252,
                padding: isExpanded
                    ? const EdgeInsets.all(8)
                    : const EdgeInsets.only(),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      color: Colors.black.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    isExpanded
                        ? Row(
                            children: [
                              Image.asset('images/claro_logo.png'),
                            ],
                          )
                        : Container(),
                    isExpanded
                        ? const Divider(
                            color: Color(0xFFADAFAF),
                            thickness: 1,
                          )
                        : Container(),
                    Container(
                      width: 232,
                      height: 49,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD52B1E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _showPopupMenu(context);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Opacity(
                                  opacity: 0.80,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      'Operação',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  selectedValue,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            splashColor: Colors.transparent,
                            onPressed: () {
                              _showPopupMenu(context);
                            },
                            icon: const Icon(
                              Icons.unfold_more_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ItensMenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) async {
    final result = await showMenu(
      context: context,
      position: isExpanded
          ? const RelativeRect.fromLTRB(46, 235, 48, 10)
          : const RelativeRect.fromLTRB(11, 192, 11, 0),
      items: dropdownItems.map((item) {
        return PopupMenuItem<String>(
          height: 30,
          value: item,
          child: SizedBox(
            width: isExpanded ? 150 : 90,
            child: Text(
              item,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );

    if (result != null) {
      setState(() {
        selectedValue = result;
      });
    }
  }
}
