import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'painel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  bool isSwitch = true;

  List<String> list = <String>['TODOS', 'RED', 'PROMOTOR'];
  late String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.only(left: 88, right: 88, top: 0),
            width: MediaQuery.of(context).size.width * 0.312,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo_Claro_tools_red.png',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 424,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Olá, bem-vindo\nao ',
                          style: GoogleFonts.inter().copyWith(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Claro Tools',
                          style: GoogleFonts.inter().copyWith(
                            color: const Color(0xFFD52B1E),
                            fontStyle: FontStyle.normal,
                            fontSize: 48,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 424,
                  child: Text(
                    'Para configurar suas ferramentas, entre no portal com \nsuas credenciais de acesso.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.800000011920929),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 64),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                  cursorColor: Colors.grey,
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    labelText: 'Login',
                    suffixIcon: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                  cursorColor: Colors.grey,
                  obscureText: !passwordVisible,
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {
                        passwordVisible = !passwordVisible;
                      }),
                      icon: passwordVisible
                          ? const Icon(
                              Icons.visibility_outlined,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                            ),
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                DropdownMenu<String>(
                  requestFocusOnTap: false,
                  menuStyle: MenuStyle(
                    surfaceTintColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(
                      Size.fromWidth(
                        424,
                      ),
                    ),
                  ),
                  width: 424,
                  initialSelection: list.first,
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Switch(
                      activeColor: const Color(0xFFFFFFFF),
                      activeTrackColor: const Color(0xFFD52B1E),
                      inactiveTrackColor: Colors.grey[300],
                      value: isSwitch,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitch = value;
                        });
                      },
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Lembrar usuário?',
                      style: TextStyle(
                        color: Color(0xFF111727),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 64, bottom: 64),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PainelPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFFD52B1E), // Cor de fundo
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const SizedBox(
                        width: 424,
                        height: 39,
                        child: Center(
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    )),
                Container(
                  width: 146.12,
                  height: 40,
                  child: Row(
                    children: [
                      const Text(
                        'Gestão',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          height: 0,
                        ),
                      ),
                      const VerticalDivider(
                        color: Color(0xFF6B7280),
                        thickness: 1,
                      ),
                      Container(
                        width: 73.12,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/redeinova_azul.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background_login.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
