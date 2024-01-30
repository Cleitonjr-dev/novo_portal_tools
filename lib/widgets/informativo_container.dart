import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../repository/informacao_container_repository.dart';

class InformationContainer extends StatefulWidget {
  const InformationContainer({super.key});

  @override
  State<InformationContainer> createState() => _InformationContainerState();
}

class _InformationContainerState extends State<InformationContainer> {
  final informativo = InformacaoContainerRepository.informativo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 223,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int informativoindex) {
          return Row(
            children: [
              Container(
                width: 487,
                height: 175,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.25,
                      color: Colors.black.withOpacity(0.10000000149011612),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(15),
                      decoration: ShapeDecoration(
                        color: const Color(0x4CD52B1E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(107.50),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          informativo[informativoindex].icon,
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 360,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 162,
                            height: 73,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  informativo[informativoindex].indicador,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 60,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  informativo[informativoindex].porcentagem ??
                                      '',
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.30000001192092896),
                                    fontSize: 30,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                informativo[informativoindex].title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                informativo[informativoindex].subtitle,
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 17.50,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                        ],
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
