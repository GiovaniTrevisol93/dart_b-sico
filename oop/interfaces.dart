// O dart não tem uma sintaxe especial para implementar interfaces
// Uma interface em dart é uma classe normal
// é obrigatório reescrever todos os métodos implementados na classe superior


main() {

  var tv = SmartTv();
  tv.volumeUp();
  tv.volumeDown();
  tv.networkConnection();

}


// "Interface"
class Television {

  void volumeUp() {}

  void volumeDown() {}
}


// Classe
class SmartTv implements Television {

  bool netflix = true;

  void volumeUp() {
    print('Aumentei o volume');
  }

  void volumeDown() {
    print('Abaixei o volume');
  }

  void networkConnection() {
    print('Tem internet');
  }
}