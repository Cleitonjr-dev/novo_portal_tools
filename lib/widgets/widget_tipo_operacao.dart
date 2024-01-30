/*import 'package:flutter/material.dart';

class TipoOperacao extends StatefulWidget {
  const TipoOperacao({Key? key}) : super(key: key);

  @override
  State<TipoOperacao> createState() => _TipoOperacaoState();
}

class _TipoOperacaoState extends State<TipoOperacao> {
  List<String> dropdownItems = ['TODOS', 'RED', 'PROMOTOR'];
  String selectedValue = 'TODOS';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: Container(
        width: 252,
        height: 110,
        padding: const EdgeInsets.all(8),
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
            Row(
              children: [
                Image.asset('images/claro_logo.png'),
              ],
            ),
            const Divider(
              color: Color(0xFFADAFAF),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: 232,
                height: 49,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showPopupMenu(context);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.80,
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
                            Text(
                              selectedValue,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
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
            ),
          ],
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) async {
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(43, 225, 43, 10),
      items: dropdownItems.map((item) {
        return PopupMenuItem<String>(
          height: 25,
          value: item,
          child: Container(
            width: 200,
            child: Text(
              item,
              style: TextStyle(
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
}*/
