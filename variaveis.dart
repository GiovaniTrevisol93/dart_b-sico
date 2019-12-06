import 'dart:io';
/*
comentário em bloco
================================
Neste arquivo veremos os tipo de variaveis e algumas funcoes
================================
*/

//comentario em linha

//este é ponto inicial da aplicação
main(List<String> arguments) {
  /*
  tipos numericos no dart
  int = apenas nrs inteiros - 52
  double = nr com casas decimais, usar sempre ponto - 3.1415
  num - aceita int e double
*/

  num v1 = 23.9;
  print(v1);

  int idade = 26;
  print(idade);

  double decimal = 20.03;
  print(decimal);

  //conversão de tipos
  String age = '12';
  int teste = int.parse(age);
  print(teste);

  double teste2 =
      double.parse('10'); //neste caso estou enviando uma string "10"
  print(teste2);

  //captura de erro
  int erro = int.parse('12.90', onError: (source) {
    return 0;
  });
  print(erro);

  //captura de erro ==> usando arrow function
  int erro2 = int.parse('11.80', onError: (source) => 1);
  print(erro2);

  //cálculos
  int multIdade = 7;
  int resul = idade * multIdade;
  print('A sua idade multiplicada por $multIdade é $resul anos');

  /*
=================
Funcoes para variaveis numéricas
=================
*/

  print('=================');

  num numero = 1.15;

  print('Arredondando valor');
  print(numero.round()); //remove as casas decimais

  print(numero.compareTo(20)); // compara se o nr é igual ao passado na funcao
  //se for -1 é inferior, se for 0 é igual, se for 1 é superior

  print(numero.toInt()); //converte para nr inteiro

  print(10.toDouble()); // convete o nr 10 para double

  print(numero.toString()); // convete a varialvel num para string

  print(numero.toString() is String);
  // verifica se realmente existe a conversão

  print(numero.toStringAsFixed(1));
  //converte para string mantendo apenas uma casa decimal

  print(numero.isInfinite);
  //verifica se o nr é infinito

  print((numero / 0).isInfinite);

  print(numero.truncate());
  //remove tudo que vem depois do ponto

  print(numero.floor()); //arredonda para o inteiro mais proximo

  num v2 = 2.99;
  print(v2.floor()); //

  /*
=================
booleanos
=================
*/

  bool rico = true;
  print('Rico = $rico');

  rico = false;
  print('Rico = $rico');

  //operador ternário
  print('Você é ${rico ? 'rico' : 'pobre'}');

  //retorna o tipo da variavel
  print(rico.runtimeType);

  int a = 2;
  print(a.runtimeType);

  /*
=================
String
=================
*/

//uma string é um tipo para armazenar textos

  String nome = 'Giovani Trevisol';
  print(nome);
  print('Olá, $nome');

  //divide a string com base no parametro - neste caso " "(espaco)
  var nomeDividido = nome.split(' ');
  print('Primeiro nome: ${nomeDividido[0]}');
  print('Meu sobrenome: ${nomeDividido[1]}');

  //executando este comando percebemos que a variavel nomeDividido é uma list<String>
  print(nomeDividido.runtimeType);

//contar uma string
  String nickName = nome.substring(0, 3);
  print('apelido: $nickName');

  //recuperar a posicao de cada letra
  //g i o v a n i
  //1 2 3 4 5 6 7
  String soup = 'Giovani Trevisol';
  int index = soup.indexOf('i T');
  //retorna a posicao onde começa o trecho da string
  print(index);

  //tamanho de uma string
  print(nome.length);

  //busca algo específico
  print('Contem T: ${nome.contains('F')}');

  /*
=================
Funcoes para variavei string
=================
*/
  String palavra = 'Cachorro quente';

//tudo em minusculo
  print(palavra.toLowerCase());

//Tudo em maiusculo
  print(palavra.toUpperCase());

  //remove os espacos em branco
  print(palavra.trim());

  //quebra em string por caractere determinado
  print(palavra.split(' '));

  //pega um trecho da string
  print(palavra.substring(2, 5));

  //verifica compara se a palavra começa com...returna true/False
  print(palavra.startsWith('C'));

  //troca caracteres dentro da string
  print(palavra.replaceAll('o', 'b'));

  //troca apenas a primeira letra encontrada
  print(palavra.replaceFirst('a', '*'));

  //troca as letras que estão dentro do indice escolhido
  print(palavra.replaceRange(1, 4, '___'));

  //verifica se tem o parametro dentro da string; retorn true/ False
  print(palavra.contains('a'));
  print(palavra.contains('b'));
  print(palavra.contains('quente'));

  //retorna passição, index de determinado indice na variavel
  print(palavra.indexOf('quente')); //retorna onde começa.....
  print(palavra.indexOf('rr'));

  //retorna quantos caracteres tem a string
  print(palavra.length);

  //verifica se a string termina com determinado caractere
  print(palavra.endsWith('a')); // return true and false

  //compara uma string com outra
  print(
      palavra.compareTo('batata')); // return 0 se igual || -1 se for diferente
  print(palavra.compareTo('Cachorro quente'));

  //verifica se é uma string
  print('1' is String); // return true and false
  print(1 is String);

  //convertemos uma string para int de depois testamos se é um int
  print(int.parse('2') is int);

  /*
=================
Constantes
=================
*/

//cria uma constante em tempo de compilação
  const pi = 3.1415;
  print('O valor de pi é $pi');

  /*
=================
interação com o usuário
=================
*/

  print('Qual é o seu nome?');
  String nome1 = stdin.readLineSync();

  nome1.isEmpty ? print('Nenhum nome foi informado :( ') : print('Olá, $nome1');
}
