import 'package:flutter/material.dart';
import 'package:novo_portal/login_page.dart';

import 'painel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFFFFF),
        ),
        useMaterial3: false,
      ),
      //home: const LoginPage(),
      home: const PainelPage(),
    );
  }
}
