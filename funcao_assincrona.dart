main() async {
  print('começou');
  load();
  load2();
  print('continuou');

  var dados = await load3();
  print(dados);
}

load() async {
  await new Future.delayed(const Duration(seconds: 2));
  print('carregou 1');
}

load2() async {
  await new Future.delayed(const Duration(seconds: 1));
  print('carregou 2');
}

load3() async {
  await new Future.delayed(const Duration(seconds: 5));
  return 'carregou 3';
}
