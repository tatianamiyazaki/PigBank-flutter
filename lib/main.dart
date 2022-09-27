import 'package:flutter/material.dart';
import 'package:saudacao/screens/cadastro/lista_contatos.dart';
// import 'screens/transferencias/lista_transferencia.dart';
import 'screens/dashboard.dart';
// import 'screens/cadastro/formulario_contato.dart';
// import 'screens/cadastro/lista_contatos.dart';

void main() => runApp(Banco());

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: dashboard(), //chama a tela com os cards
    );
  }
}
