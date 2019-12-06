import 'dart:io';

main(List<String> arguments) {
  print('Qual sua idade?');
  //int age = int.parse(stdin.readLineSync());
  int age = 30;

//usando apenas IF - (nao é o mais indicado, mas funciona...hahaha)
//no if, quando tem apenas uma linha nao precisa usar {}
  if (age == 26) print('Você tem 26 anos');

  if (age != 26) print('Você nao tem 26 anos');

  if (age < 18) print('você é menor de idade');

  if (age < 13) print('você é uma criança');

  if (age > 60) print('Você é um veterano');

  if (age > 100) print('UAUU, você é uma lenda!!!');

  // if else
  if (age == 21) {
    print('este é seu ano especial');
  } else {
    print("este é apenas um ano normal");
  }

  print('--------------------');

/*
=============
TERNÁRIO
=============
*/

//if else
  int numero = 0;

  if (numero > 0) {
    print('Número maior que zero');
  } else {
    print('Número menor ou igual a zero');
  }

  //ternário
  print(numero > 0 ? 'Número maior que zero' : 'Número menor ou igual a zero');

  //ternario com 3 posibilidades de returno
  print(numero > 0
      ? 'Nr maior que zero'
      : numero == 0 ? 'Nr é igual a zero' : 'Nr é menor que zero');

/*
=============
Escopo de varivel
=============
*/

  int idade = 423;

  if (idade == 43) {
    print('você tem 43 anos');
  } else {
    //essa varivel bool é apenas do else, nao funciona em nenhum lugar alem deste
    bool temdivida = true;
    print('Você tem $idade e ${temdivida ? 'não' : 'sim'} tem dividas');
  }

/*
=============
    Switch
=============
*/
  int idade2 = 40;
  switch (idade2) {
    case 18:
      print('Você tem 18 anos , pode tirar sua CNH');
      break;
    case 21:
      print('Você tem 21 anos , é adulto');
      break;
    case 65:
      print('Você pode se aposentar!!!');
      break;

    default:
      print('nada de especial');
  }

  /*
=============
    Loop
=============
*/

//for
  for (var i = 0; i <= 10; i += 2) {
    print('For: $i');
  }

  print('---------');

//for/ for in
  List letras = ['a', 'b', 'c', 'd'];

  for (var i = 0; i < letras.length; i++) {
    print(letras[i]);
  }
  print('-for in-');
  for (var item in letras) {
    print(item);
  }

  print('---------');

  // for
  List pessoas = ['Giovani', 'Lara', 'João', 'Pedro'];
  for (var i = 0; i < pessoas.length; i++) {
    print(pessoas[i]);
  }
  // for each
  pessoas.forEach((pessoas) {
    print('Usando o for each: $pessoas');
  });

  // for each com arrow function
  pessoas.forEach((p) => print('For each + arrow Func: $p'));

  /*
=============
    while
=============
*/
  int k = 0;

  while (k < 10) {
    print('while: $k');
    k++;
  }

  /*
=============
    do while
=============
*/

  int j = 3;

  do {
    print('do while : $j');
    j++;
  } while (j < 10);

  print('-------------');

  /*
=============
    contador até 10
=============
*/
  int max = 10;

  for (var i = 1; i <= max; i++) {
    print(i);
  }
}
