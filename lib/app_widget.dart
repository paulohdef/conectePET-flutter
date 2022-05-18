import 'package:conectepet/cadastoPet_page.dart';
import 'package:flutter/material.dart';
import 'package:conectepet/app_controller.dart';

import 'login_page.dart';
import 'pets_page.dart';
import 'cadastroTutor_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              colorScheme: ColorScheme(
                brightness: Brightness.light,
                primary: Color.fromARGB(255, 246, 146, 30),
                onPrimary: Color.fromARGB(255, 0, 0, 0),
                secondary: Color.fromARGB(255, 246, 146, 30),
                onSecondary: Color.fromARGB(255, 0, 0, 0),
                background: Color.fromARGB(255, 0, 0, 0),
                error: Color.fromARGB(255, 94, 255, 0),
                onBackground: Color.fromARGB(255, 255, 255, 255),
                onError: Color.fromARGB(255, 0, 81, 255),
                onSurface: Colors.grey,
                surface: Color.fromARGB(255, 255, 0, 0),
              ),
              brightness: Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/pets': (context) => PetsPage(),
              '/cadastro': (context) => CadastroTutorPage(),
              '/cadastroPet': (context) => CadastroPetPage(),
            },
          );
        });
  }
}
