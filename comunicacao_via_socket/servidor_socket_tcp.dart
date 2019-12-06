import 'dart:io';
import 'dart:convert';

main() async {
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print('Escutnado mensagem do servidor...');

  await for (var socket in serverSocket) {
    socket.listen((List values) {
      print(
          '${socket.address} : ${socket.remotePort} = ${utf8.decode(values)}');
    });
  }
}
