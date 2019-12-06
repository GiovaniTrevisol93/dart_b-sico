import 'dart:convert';
import 'package:imports_7/imports.dart' as mycode;
import 'package:http/http.dart' as http;

//converte um texto para base64
main(List<String> arguments) {
  String valor = 'Giovani Trevisol';

  List bytes = utf8.encode(valor);
  String encoded = base64.encode(bytes);

  print('Encoded: $encoded');

  print('-');
//converte uma base64 para texto
  List dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);

  print('decoded: $decoded');

  // usando import proprio - outro arquivo
  print(mycode.calcular());
  print(mycode.ola());

  // usando import http
  var url = 'https://www.google.com.br/';
  http.get(url).then((response) {
    print('Código de status da requisição: ${response.statusCode}');
    print('Response body: ${response.body}');
  });
}
