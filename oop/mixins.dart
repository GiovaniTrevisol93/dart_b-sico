main() {


//  print('\n################ Dados do cliente ################\n');
//
//  var client1 = Client();
//  client1.name = 'João da Silva';
//  client1.cpf = '11111111111';
//  client1.address = 'Av. Skywalker, s/n. Bairro do império';
//
//  client1.cameIn();
//  print('Nome: ${client1.name}');
//  print('Cpf: ${client1.cpf}');
//  print('Endereço: ${client1.address}');
//  client1.cameOut();
//
//
//  print('\n################ Dados do empregado ################\n');
//
//  var employee1 = Employee();
//
//  employee1.name = 'Luke Skywalker';
//  employee1.cpf = '22222222222';
//  employee1.phone = '23422442';
//  employee1.mom = 'Padmé Amidala';
//
//  employee1.cameIn();
//  print('Nome: ${employee1.name}');
//  print('Cpf: ${employee1.cpf}');
//  print('Telefone: ${employee1.phone}');
//  print('Mãe: ${employee1.mom}');
//  employee1.cameOut();


  print('\n################ Dados do gerente ################\n');

  var manager1 = Manager();

  manager1.name = 'Darth Sidious';
  manager1.cpf = '33333333333';
  manager1.table = 1;
  manager1.password = 'abc123';
  
  print('Nome: ${manager1.name}');
  print('Cpf: ${manager1.cpf}');
  print('Mesa: ${manager1.table}');
  print('Senha de acesso: ${manager1.password}');

  manager1.cameIn();
}


//class Client extends Person {
//  String address;
//}

//class Employee extends Person {
//  String mom;
//  String phone;
//  int _registrationCode;
//
//  int get registrationCode => _registrationCode;
//}


class Manager extends Person with Administrator {
  int table;
}


class Administrator {
  String password;
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
    String dateSlug = '${today.day.toString().padLeft(2,'0')}/${today.month.toString().padLeft(2,'0')}/${today.year.toString()}';
    dateSlug += ' ${today.hour.toString().padLeft(2,'0')}:${today.minute.toString().padLeft(2,'0')}:${today.second.toString().padLeft(2,'0')}';

    return dateSlug;
  }
}