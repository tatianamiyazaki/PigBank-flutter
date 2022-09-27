import 'package:flutter/material.dart';
import '../../components/contato.dart';
import '../../models/contatos.dart';

const _tituloAppBar = 'Cadastro de Clientes';
const _rotuloCampoNome = 'Nome';
const _dicaCampoNome = 'Insira o nome completo';
const _rotuloCampoEndereco = 'Endereço';
const _dicaCampoEndereco = 'Informe endereço';
const _rotuloCampoTelefone = 'Telefone';
const _dicaCampoTelefone = '(00) 00000-0000';
const _rotuloCampoEmail = 'E-mail';
const _dicaCampoEmail = 'email@email.com';
const _rotuloCampoCPf = 'CPF';
const _dicaCampoCPF = '000.000.000-00';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioContatos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioContatosState();
  }
}

class FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoEndereco =
      TextEditingController();
  final TextEditingController _controladorCampoTelefone =
      TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoCPF = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNome,
              rotulo: _rotuloCampoNome,
              dica: _dicaCampoNome,
            ),
            Editor(
              controlador: _controladorCampoEndereco,
              rotulo: _rotuloCampoEndereco,
              dica: _dicaCampoEndereco,
            ),
            Editor(
              controlador: _controladorCampoTelefone,
              rotulo: _rotuloCampoTelefone,
              dica: _dicaCampoTelefone,
            ),
            Editor(
              controlador: _controladorCampoEmail,
              rotulo: _rotuloCampoEmail,
              dica: _dicaCampoEmail,
            ),
            Editor(
              controlador: _controladorCampoCPF,
              rotulo: _rotuloCampoCPf,
              dica: _dicaCampoCPF,
            ),
            ElevatedButton(
              child: Text(_textoBotaoConfirmar),
              onPressed: () {
                _criaContatos(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _criaContatos(BuildContext context) {
    // debugPrint('Clicou em confirmar');
    final nome = _controladorCampoNome.text;

    final endereco = _controladorCampoEndereco.text;

    final telefone = _controladorCampoTelefone.text;

    final email = _controladorCampoEmail.text;

    final cpf = _controladorCampoCPF.text;

    if (nome != null &&
        endereco != null &&
        telefone != null &&
        email != null &&
        cpf != null) {
      final contatosCriada = Contatos(
        nome,
        endereco,
        telefone,
        email,
        cpf,
      );
      // debugPrint('Criando transferência');
      // debugPrint('$transferenciaCriada');
      Navigator.pop(context, contatosCriada);
    }
  }
}
