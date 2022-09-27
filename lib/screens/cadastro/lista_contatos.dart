import 'package:flutter/material.dart';
import '../../models/contatos.dart';
import 'formulario_contato.dart';

const _tituloAppBar = 'Lista de Contatos';

class ListaContatos extends StatefulWidget {
  final List<Contatos> _contatos = [];

  @override
  State<StatefulWidget> createState() {
    return ListaContatosState();
  }
}

class ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: ((context, indice) {
          final contatos = widget._contatos[indice];
          return ItemContatos(contatos);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Contatos?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioContatos();
              },
            ),
          );
          future.then(
            (contatosRecebida) {
              // debugPrint('Chegou no then do future');
              // debugPrint('$transferenciaRecebida');
              if (contatosRecebida != null) {
                setState(
                  () {
                    widget._contatos.add(
                      contatosRecebida,
                    );
                  },
                );
              }
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemContatos extends StatelessWidget {
  final Contatos _contatos;

  ItemContatos(this._contatos);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(
          _contatos.nome.toString(),
        ),
        subtitle: Text(_contatos.endereco.toString() +
            '\n' +
            _contatos.telefone.toString() +
            '\n' +
            _contatos.email.toString() +
            '\n' +
            _contatos.cpf.toString() +
            '\n'),
      ),
    );
  }
}
