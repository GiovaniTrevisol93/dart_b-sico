import 'dart:io';
import 'dart:convert';

//criando um arquivo JSON para um arquivo externo

main(List<String> arguments) {
  Map<String, String> data = Map();
  data.putIfAbsent('1', () => 'Giovani');
  data.putIfAbsent('2', () => 'Maria');
  data.putIfAbsent('3', () => 'pedro');
  data.putIfAbsent('4', () => 'Roberto');
  data.putIfAbsent('5', () => 'Julia');

  Directory dir = Directory.current;
  print('Seu diretorio atual é ${dir.path}');
  File file = File(dir.path + '/meu_arquivo.txt');

  writeFile(file, json.encode(data).toString());

  print(data);
}

void writeFile(File file, String data) {
  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync(data);
  raf.flushSync();
  raf.closeSync();
}
