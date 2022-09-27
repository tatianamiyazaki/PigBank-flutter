import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saudacao/screens/cadastro/lista_contatos.dart';
import 'package:saudacao/screens/transferencias/lista_transferencia.dart';

import '../models/contatos.dart';
import '../models/transferencia.dart';

const _tituloAppBar = 'Dashboard';
const _textoContatos = 'Contatos';
const _textoTransferencias = 'Transferências';
const _tituloContatos = 'Contatos';

class dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      final Future<Contatos?> future = Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ListaContatos();
                          },
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.people),
                        const Text(_textoContatos),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      // padding: MaterialStateProperty.all(
                      //   EdgeInsets.all(right: 50),
                      // ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      final Future<Transferencia?> future = Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ListaTransferencia();
                          },
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.monetization_on, color: Colors.amber),
                        const Text(_textoTransferencias),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
