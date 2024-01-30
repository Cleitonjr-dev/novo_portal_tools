import 'package:flutter/material.dart';

import '../repository/informacao_novidade_repository.dart';

class InformacaoNovidade extends StatefulWidget {
  const InformacaoNovidade({super.key});

  @override
  State<InformacaoNovidade> createState() => _InformacaoNovidadeState();
}

class _InformacaoNovidadeState extends State<InformacaoNovidade> {
  final informativoNovidade = InformacaoNovidadeRepository.informativoNovidade;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 223,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Container(
                width: 487,
                height: 175,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.25,
                      color: Colors.black.withOpacity(0.10000000149011612),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      informativoNovidade[index].title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        informativoNovidade[index].subtitle,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width:
                            informativoNovidade[index].platform == 'Aplicativo'
                                ? 140
                                : 107,
                        height: 36,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD52B1E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            informativoNovidade[index].icon,
                            Text(
                              informativoNovidade[index].platform,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
            ],
          );
        },
      ),
    );
  }
}
