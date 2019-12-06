import 'dart:collection';
import 'dart:io';

main(List<String> arguments) {
  /*
  ============
      Listas
  ============
  */

  List lista1 = [1, 2, 3, 4, 5, 6];

  //quantidade de intens na list
  print('tamanho da lista: ${lista1.length}');

  //pega algum iten da lista
  print('O primeiro iten da lista é: ${lista1[0]} ');
  print('O terceiro iten da lista é: ${lista1[2]} ');

  //outra forma de pegar o valor pela posição
  print('O segundo item da lista é ${lista1.elementAt(1)}');

  // criamos uma lista vazia
  List coisas = new List();
  //atribuindo valores a lista
  coisas.add(1);
  coisas.add('Computador');
  coisas.add(true);
  /*observe que esta é uma lista GENÉRICA pois tem varios tipos de dados 
  podemos definir um tipo para nossa lista, veja exemplos a seguir
  */
  print(coisas);

  //definindo tipo de dado da lista - <int>
  //veja que a palavra reservada 'new' não é obrigatória em dart
  List<int> numeros = List<int>();
  numeros.add(1);
  numeros.add(2);
  numeros.add(3);
  numeros.add(4);
  //numeros.add('string'); // ERRO POIS ESTOU INSERINDO UMA STRING
  print(numeros);

  //lista de string
  List<String> textos = new List<String>();
  textos.add('olá');
  textos.add('Giovani');
  textos.add(' '); // apenas um 'espaco' tbm é string
  textos.add('Trevisol');

  print(textos);

  /*
  ============
      Listas - every
      faz uma varedura na lista aplicando a condição &&,
      compara true/false em cada elemento
      retur true/false
  ============
  */
  List<int> inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  bool resultado = inteiros.every((result) => result > 0);
  //retorna true se todos os nrs forem maior que 0
  print(resultado);

  List<String> palavras = ['Giovani', 'Lara', 'Paulo', 'Maria'];
  bool resultadoString = palavras.every((result) => result.contains('a'));
  //retorna true pois tem a letra 'a'
  print(resultadoString);

/*
  ============
      Listas - expandida
  ============
  */

  var matriz = [
    [0, 1, 2],
    [3, 4, 5]
  ];

//juntando as duas listas
  List<dynamic> listExpandida = matriz.expand((elemento) => elemento).toList();
  print(listExpandida);

//exemplo 2
  List<num> listNuneros = [1, 1.6, 2.2, 3.9, 50];
  List<int> listInteiros = [1, 5, 10, 15];
  List<double> listDouble = [1.3, 2.5, 6.7, 7.7];

  List<dynamic> listDynamic = [];
  //simplesmente concatenou as listas
  listDynamic = listNuneros + listInteiros + listDouble;
  print(listDynamic);

  //exemplo 3
  listDynamic = []
    ..addAll(listNuneros)
    ..addAll(listInteiros)
    ..addAll(listDouble);
  print(listDynamic);

  print('--------------------');
  print('--------------------');

  /*
  ============
      Listas - reduce
      compare os elementos da lista e retorna um unico elemento resultante
  ============
  */
  //gera uma lista automaticamente
  List<int> numerosPares = List.generate(10, (i) => i * 2);
  print(numerosPares);

  int resultadoReduce = numerosPares.reduce((anterior, atual) {
    //print('$anterior, $atual');
    return anterior + atual;
  });
  print(resultadoReduce);

  /*
  ============
      Listas - Where
  ============
  */
  List<dynamic> lwIdades = [5, 8, 30, 40, 5.0, 60, 70, 'Gio'];
  //veja que retorna apenas os nr int -- toList apenas para converver
  print(lwIdades.where((a) => a is int).toList());

  List<dynamic> maioresIdade =
      lwIdades.where((b) => b is int && b > 18).toList();
  print(maioresIdade);

  print('--------------------');
  print('--------------------');

  /*
  ============
      set
      set é uma coleção desordenada que não aceita valores duplicados
  ============
  */

  Set<int> setNumeros = new Set<int>();
  setNumeros.add(1);
  setNumeros.add(2);
  setNumeros.add(3);
  setNumeros.add(1); // veja que ignorou este valor pois esta duplicado
  print(setNumeros);

  print('--------------------');

/*
  ============
      Queue - ou simplesmente fila
      Fila é coleção ordenada sem index que add e remove itens do inicio e do fim
  ============
  */

  Queue queueItens = new Queue();
  queueItens.add(1);
  queueItens.add(2);
  queueItens.add(3);
  queueItens.add(4);
  print(queueItens);

  // add um item no começo da fila
  queueItens.addFirst(0);
  print(queueItens);

  //add item no final da fila
  queueItens.addLast(5);
  print(queueItens);

  // remove um item no começo da fila
  queueItens.removeFirst();
  print(queueItens);

  //remove item no final da fila
  queueItens.removeLast();
  print(queueItens);

  //remove com where
  queueItens.removeWhere((a) => a == 2);
  print(queueItens);

  print('--------------------');

  /*
  ============
      Map
      map é composto por chave e valor, semelhante ao JSON
  ============
  */

  // veja que é passado dois valores<int, String>, ou seja, chave e valor
  Map<int, String> ddds = new Map();
  ddds[11] = 'São Paulo';
  ddds[19] = 'Campinas';
  ddds[21] = 'Rio de Janeiro';

  print(ddds);

  //
  Map<String, dynamic> person = new Map();
  person['nome'] = 'Giovani';
  person['idade'] = 26;
  person['altura'] = 1.88;
  person['peso'] = 82;

  print(person);

  //
  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('pai', () => 'Pedro');
  people.putIfAbsent('filho', () => 'Roberto');
  people.putIfAbsent('Filha', () => 'paula');

  print(people);

  // apenas chaves do mapa
  print('apenas as chaves de uma mapa são: ${people.keys}');
  // apenas valores do mapa
  print('apenas os valores de uma mapa são: ${people.values}');
  // buscando com chave especifica
  print('O pai é: ${people['pai']}');
  print('O filho é: ${people['filho']}');

  /*
  ============
    Lista interativa 
  ============
  */

  List listPessoas = ['Giovani', 'João', 'Maria'];
  print('quantidade de pessoas na lista: ${listPessoas.length}');

  print('Informa um indice!');
  int index = int.parse(stdin.readLineSync());

  if (index < listPessoas.length) {
    print(listPessoas[index]);
  } else {
    print('Indice não encontrado');
  }
}
