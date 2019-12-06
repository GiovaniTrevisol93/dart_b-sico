main() {
  
  Pessoa.instancia.nome = 'Leonardo';
  print(Pessoa.instancia.nome);

  var pessoa1 = Pessoa.instancia;
  var pessoa2 = Pessoa.instancia;

  pessoa1.nome = 'Darth Vader';
  print(Pessoa.instancia.nome);

  pessoa2.nome = 'BB8';
  print(Pessoa.instancia.nome);

}

class Pessoa {
  static final Pessoa instancia = new Pessoa._construtorNomeado();
  String nome;

  Pessoa._construtorNomeado();
}
