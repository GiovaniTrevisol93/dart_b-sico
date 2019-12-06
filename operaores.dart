main(List<String> arguments) {
  int num1 = 101;
  int num2 = 2;
  dynamic res = 0;

  //soma
  res = num1 + num2;
  print('Adição: $res');

  //subtracao
  res = num1 - num2;
  print('subtração: $res');

  //Multiplicação
  res = num1 * num2;
  print('Multiplicação: $res');

  //divisão
  res = num1 / num2;
  print('Divisão: $res');

  //divisão - retorna apenas um inteiro
  res = num1 ~/ num2;
  print('Divisão - retorna apenas um inteiro: $res');

  //resto da divisão
  res = num1 % num2;
  print('Resto da divisão: $res');

  /*
  ==================
  INCREMENTOS
  ==================
  */

  num1 = num1 + 1; // nao precisa ser assim, usamos o ++,
  print('Incrementando: $num1');

  num1 = num1++;
  print('Incrementando: $num1');

  //decremento
  num1 = num1--;
  print('Decrementando: $num1');

  /*
  ==================
      OPERAÇÕES LÓGICAS
  ==================
  */

/*
comparadores
-------------------------------------
>  -> maior
>= -> maior igual
<  -> nemor
<= -> menor igual
== -> igualdade
!= -> diferente
-------------------------------------
*/

  bool testCompara = (10 != 20);
  print(testCompara);

  testCompara = (10 > 20);
  print(testCompara);

  testCompara = (10 < 20);
  print(testCompara);

/*
Operador OR/ou
-------------------------------------
true X true - true
true X false - true
false X true - true
false X false - false 
-------------------------------------
*/

  // neste caso o computador sempre retorna true
  bool testOr = (true || false);
  print(testOr);

  testOr = (false || false);
  print(testOr);

/*
Operador AND/e
-------------------------------------
true X true - true
true X false - false
false X true - false
false X false - false 
-------------------------------------
*/

  bool testAnd = (true && false);
  print('E: $testOr');

  bool complex = !(10 > 20) && (30 < 20) || testAnd;
  print('Complexa: $complex');
}
