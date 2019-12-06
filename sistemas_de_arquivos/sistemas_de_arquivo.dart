import 'dart:io';

main(List<String> arguments) {
  String path = 'D:/Users/Giovani/Downloads';
  Directory dir = Directory(path);

  if (dir.existsSync()) {
    print('O diretório existe');
  } else {
    print('Diretorio não encontrado!');
  }

  print('/n/n/n');

  //como criar e remover um diretorio no sistema de arquivo temporário

  dir = Directory.systemTemp.createTempSync();
  print(dir.path);

  if (dir.existsSync()) {
    print('Removendo ${dir.path}');
    dir.deleteSync();
  } else {
    print('não foi possível encontrar o diretório ${dir.path}');
  }
}
