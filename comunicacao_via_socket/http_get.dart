import 'package:http/http.dart' as htttp;

//get

main() async {
  var url = 'https://www.google.com.br/';

  var resposta = await htttp.get(url);
  print('O servidor retornou status: ${resposta.statusCode}');
  print('O corpo da mensagem é ${resposta.body}');

  //post
  var url2 = 'https://httpbin.org/post';

  var resposta2 = await htttp.post(url2, body: 'name=Giovnai&idade=26');
  print('O servidor retornou status: ${resposta2.statusCode}');
  print('O corpo da mensagem é ${resposta2.body}');
}
