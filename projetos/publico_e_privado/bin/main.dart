import 'package:publico_e_privado_9/aminal.dart';

main(List<String> arguments) {
  Animal animal = new Animal.parametro('Titã', 5, 'preto e branco');

  //veja que como os atributos do animal tem _
  //nao consigo acessar, apenas pelo construtor neste caso
  //Animal animal2 = Animal();
  //animal2.
  animal.brincar();

  Animal animal2 = new Animal();
  animal2.nome = 'Fulano';
  animal2.idade = 4;
  animal2.pelo = 'Cinza';

  print('${animal.nome} - ${animal.idade} - ${animal.pelo}');
  print('${animal2.nome} - ${animal2.idade} - ${animal2.pelo}');
}
