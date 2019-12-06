class Client {

  int cpf;
  String name;
  String gender;
  String phone;
  bool active = false;

//  Client(String name, int cpf, String gender, String phone) {
//    this.name = name;
//    this.cpf = cpf;
//    this.gender = gender;
//    this.phone = phone;
//  }


  Client(this.name, this.cpf, this.gender, this.phone);

  Client.reception(this.name, this.phone, this.gender) {
    print("$name foi registrado com sucesso como um potencial cliente!");
  }

  void disable() {
    this.active = false;
    print("O cliente $name foi desativado!");
  }

  void enable() {
    this.active = true;
    print("O cliente $name foi ativado!");
  }
}

void main() {

  Client client1 = Client("Pedro", 12344455512, 'm', '25252525');
  client1.enable();

  Client client2 = Client("Tiago", 54678898642, 'm', '23232323');
  client2.enable();

  Client potentialClient = Client.reception("João", '25252525', 'm');

  print('Cliente 1: ${client1.name}, ${client1.phone}');
  print('Cliente 2: ${client2.name}, ${client2.phone}');


  client2.disable();

  print('Potencial cliente: ${potentialClient.name}, ${potentialClient.phone}');

  client2.enable();
}
