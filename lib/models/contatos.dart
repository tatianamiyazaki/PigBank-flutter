class Contatos {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String cpf;

  Contatos(this.nome, this.endereco, this.telefone, this.email, this.cpf);

  @override
  String toString() {
    return 'Contatos{nome: $nome, endereco: $endereco, telefone: $telefone, email: $email, cpf: $cpf}';
  }
}
