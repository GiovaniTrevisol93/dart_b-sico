main() {
  print('\n################ Dados do cliente ################\n');

  var client1 = Client();
  client1.name = 'João da Silva';
  client1.cpf = '11111111111';
  assert(client1.cpf.length == 11, 'O CPF precisa conter 11 caracteres');
  client1.address = 'Av. Skywalker, s/n. Bairro do império';

  client1.cameIn();
  print('Nome: ${client1.name}');
  print('Cpf: ${client1.cpf}');
  print('Endereço: ${client1.address}');
  client1.cameOut();

  print('\n################ Dados do empregado ################\n');

  var employee1 = Employee();

  employee1.name = 'Luke Skywalker';
  assert(employee1.name.contains(' '),
      'É necessário informar pelo menos um sobrenome');
  employee1.cpf = '22222222222';
  assert(client1.cpf.length == 11, 'O CPF precisa conter 11 caracteres');
  employee1.phone = '23422442';
  assert(employee1.phone.length == 8, 'O Telefone precisa conter 8 caracteres');
  employee1.mom = 'Padmé Amidala';
  assert(employee1.mom.contains(' '),
      'É necessário informar pelo menos um sobrenome');

  employee1.cameIn();
  print('Nome: ${employee1.name}');
  print('Cpf: ${employee1.cpf}');
  print('Telefone: ${employee1.phone}');
  print('Mãe: ${employee1.mom}');
  employee1.cameOut();
}

class Client extends Person {
  String address;
}

class Employee extends Person {
  String mom;
  String phone;
  int _registrationCode;

  int get registrationCode => _registrationCode;
}

class Person {
  String name;
  String cpf;

  void cameIn() {
    print('Entrada: ${_dateTime()}');
  }

  void cameOut() {
    print('Saída: ${_dateTime()}');
  }

  String _dateTime() {
    DateTime today = new DateTime.now();
    String dateSlug =
        '${today.day.toString().padLeft(2, '0')}/${today.month.toString().padLeft(2, '0')}/${today.year.toString()}';
    dateSlug +=
        ' ${today.hour.toString().padLeft(2, '0')}:${today.minute.toString().padLeft(2, '0')}:${today.second.toString().padLeft(2, '0')}';

    return dateSlug;
  }
}
