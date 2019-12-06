//ler e escrever em um arquivo.txt

import 'dart:io';

main(List<String> arguments) {
  Directory dir = Directory.current;
  print('Diretorio que estamos ${dir.path}');

  File file = File(dir.path + '/meu_arquivo.txt');

  writeFile(file);

  readFile(file);
}

void writeFile(File file) {
  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync('Olá mundo!!! \r\n Como você esta hoje?');
  raf.flushSync(); //usado para limpar o cache
  raf.closeSync();
}

void readFile(File file) {
  if (!file.existsSync()) {
    print('Arquivo não encontrado');
    return;
  }
  print('Iniciando a leitura');
  print(file.readAsStringSync());

  print('lendo os bytes');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));
}
