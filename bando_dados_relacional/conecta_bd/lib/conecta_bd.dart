import 'package:sqljocky5/sqljocky.dart';

//cria a conexao com o BD
get criarConexao async {
  var s = ConnectionSettings(
    user: 'root',
    //password: '',
    host: 'localhost',
    port: 3306,
    db: 'dart',
  );

  return await MySqlConnection.connect(s);
}
