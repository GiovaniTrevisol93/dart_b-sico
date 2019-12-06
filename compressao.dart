import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  String data = '';
  for (var i = 0; i < 100; i++) {
    data = data + 'Olá mundo\r\n';
  }
  print(data);

  List original = utf8.encode(data);
  print(original);

  //dados comprimidos
  List compr = gzip.encode(original);
  print(compr);

//dados descompactados
  List decodifica = gzip.decode(compr);

  print('Lista original ${original.length}');
  print('Lista compactado ${compr.length}');
  print('lista decompactada ${decodifica.length}');

  String decoded = utf8.decode(decodifica);
  assert(data == decoded);

  print('-----------------------');

  print(decoded);
}
