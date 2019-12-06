import 'package:conecta_bd/conecta_bd.dart' as conecta_bd;
import 'dart:async';
import 'package:sqljocky5/sqljocky.dart';

main() async {
  //conecta com o banco de dados
  var conn = await conecta_bd.criarConexao;

  //await criaTabela(conn);
  //await inserirDados(conn);
  //await listaDados(conn);
  await dropTables(conn);

  await conn.close();
}

//cria uma tabela
Future<void> criaTabela(MySqlConnection conn) async {
  print('Criando a tabela....');
  await conn.execute(
      'CREATE TABLE IF NOT EXISTS pessoa(id int not null auto_increment, name varchar(255) not null, email varchar(255), nascimento date, primary key(id))');
  print('tabela criada com sucesso');
}

// inseir dados
Future<void> inserirDados(MySqlConnection conn) async {
  print('inserindo dados....');
  var data = [
    ['Giovani', 'giovani@gmail.com', 26],
    ['Lara', 'lara@gmail.com', 25],
    ['titan', 'titan@gmail.com', 5],
  ];

  await conn.prepared(
      'insert into pessoa (name, email, nascimento) values (?, ?, ?)', data);
  print('Dados inseridos com sucesso');
}

//listar dados
Future<void> listaDados(MySqlConnection conn) async {
  print('Listando dados');

  var results = await conn.execute('select * from pessoa');
  await results.forEach(
      (Row row) => print('ID: ${row[0]}, Name: ${row[1]}, Name: ${row[2]}'));
}

//drop tabela
Future<void> dropTables(MySqlConnection conn) async {
  print('apagendo a tabela');
  await conn.execute('drop table pessoa');
  print('drop table');
}
