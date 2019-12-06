main() {

  try {

    String text = 'Maria';
    assert(text != null);

    int number = 50;
    assert(number < 100);

    String protocol = 'http';
    assert(protocol.contains('https'), 'O protocolo precisa ser http');

  } catch(e) {
    print(e);
  }
}