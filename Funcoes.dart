// Funções
main(List<String> arguments) {
  test();
  digaOla('Giovani');
  digaOla('Fulano');
  print(centimetrosParaMetros(500));
  print(nomeCompleto('Giovani', 'Trevisol'));

  // parametros opcionais
  print(digaOla2(''));

  String a = digaOla2('Giovani');
  print(a);

  //retorna a data
  agora('Giovani', true);

  //parametros nomeados
  //veja que foi definido os parametros; idade-nome-altura.....
  dadosPessoa(
      altura: 1.85, corPele: 'branca', idade: 26, nome: 'Giovani', peso: 82.0);

  //parametros nomeados e anonimos
  dataHora(nome: 'Giovani', data: false, hora: true);

  //Funcoes dentro da variavel
  var centParaMetros = converver;
  var meetrosParakm = converver;
  print('Centimetros para Metros: ${centParaMetros(500, 100)}m');
  print('Metros para KM : ${meetrosParakm(5000, 1000)}km');

//função anônima
  criarBotao('Botão Câmera', () {
    print('Botao criado na funcoa anonima');
  });
}

//funçao sem retorno
void test() {
  print('Esse é um teste');
}

void digaOla(String nome) {
  print('Olá $nome');
}

//funçao com retorno
double centimetrosParaMetros(num cm) {
  return cm / 100;
}

String nomeCompleto(String primeiroNome, String ultimoNime) {
  return '$primeiroNome $ultimoNime';
}

//parametros opcionais em uma função
//usa-se [] para defenir um parametro opcional
//sempre definir oque retorna quando nao tem parametro, caso contrário exibe null;
String digaOla2([String nome = '']) {
  return 'Olá $nome';
}

void agora(String texto, [bool time = false]) {
  var agora = DateTime.now();
  String dataHora =
      'hoje é dia ${agora.day}/${agora.month}/${agora.year}, e são ${agora.hour}:${agora.minute}:${agora.second}';

  print('Oi, $texto, ${time ? dataHora : ''}');
}

//parametros nomeados
//quando chamamos esta funcao, podemos setar nome: '', idade:''......
void dadosPessoa(
    {String nome, double altura, double peso, String corPele, int idade}) {
  print(
      '$nome, tem altura de $altura metros e pesa $peso kg, a sua cor de pele é $corPele, e tem $idade anos');
}

void dataHora({String nome, bool data, bool hora}) {
  var datahora = DateTime.now();
  String dts = '${datahora.day}/${datahora.month}/${datahora.year}';
  String hrs = '${datahora.hour}: ${datahora.minute}';

  print('Oi $nome! ${data ? dts : ''} - ${hora ? hrs : ''} ');
}

//funcao dentro da variavel
num converver(num nr, num escala) {
  return nr / escala;
}

void criarBotao(String text, Function criadoFunc,
    {String color, double largura}) {
  print(text);
  print(color ?? 'preto');
  print(largura ?? 10.0);
  criadoFunc();
}
