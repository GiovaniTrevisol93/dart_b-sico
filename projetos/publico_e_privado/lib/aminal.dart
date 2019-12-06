class Animal {
  //para definir uma variavel com privada, basta add _
  String _nome;
  int _idade;
  String _pelo;

  Animal.parametro(this._nome, this._idade, this._pelo);
  Animal();

  void brincar() => print('O $_nome está brincado!!!');

//get and seter
  String get nome => _nome;
  void set nome(String nome) => _nome = nome;

  int get idade => _idade;
  void set idade(int idade) => _idade = idade;

  String get pelo => _pelo;
  void set pelo(String pelo) => _pelo = pelo;
}
