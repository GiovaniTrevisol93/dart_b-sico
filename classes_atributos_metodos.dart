class Cliente {
  int cpf;
  String nome;
  String genero;
  String fone;
  bool ativo = false;

  // Cliente(String nome, int cpf, String genero, String fone) {
  //   this.nome = nome;
  //   this.cpf = cpf;
  //   this.genero = genero;
  //   this.fone = fone;
  // }

  //construtor básico
  Cliente(this.nome, this.cpf, this.genero, this.fone);

  //costrutor persunalizado
  Cliente.recepcao(this.nome, this.fone, this.genero) {
    print('$nome foi registrado com sucesso como um potencial cliente!');
  }

  void desabilita() {
    this.ativo = false;
    print('O cliente foi desativado');
  }

  void ativar() {
    this.ativo = true;
    print('O cliente foi ativado');
  }
}

main(List<String> arguments) {
  Cliente cli = new Cliente('Giovani', 26, "m", '9999999999');
  cli.ativar();

  Cliente cli2 = new Cliente('Lara', 26, "m", '9999999999');
  cli2.desabilita();

  Cliente potencialCliente = Cliente.recepcao('Joao', '999876655', 'm');

  print(cli.nome);
  print(cli.nome);

  cli2.desabilita();

  print('Potencial cliente ${potencialCliente.nome}');
}
