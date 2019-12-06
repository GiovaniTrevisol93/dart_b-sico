main(List<String> arguments) {
  try {
    int a;
    int b = 7;

    if (b != 7) throw new Exception('Os anos de cachorro precisam ser 7!');

    if (a == null) throw new NullThrownError();

    print(a * b);
  } on NullThrownError {
    print('O valor é nulo!');
  } on NoSuchMethodError {
    print('Desculpe, mas o método não foi encontrado!');
  } catch (e) {
    print('Ops, houve um erro com a mensagem: \n\n\n${e.toString()}');
  } finally {
    print('completo');
  }
}
