import 'dart:async';

main() {
  var listaDeEventos = List<dynamic>();

  var controlador = StreamController<dynamic>();
  var stream = controlador.stream;

  stream.listen((onData) {
    print('Evento disparado $onData');
    listaDeEventos.add(onData);
  }, onDone: () {
    print('Stream finalizada');
    print(listaDeEventos);
  });

  controlador.sink.add('Giovani');
  controlador.sink.add('123');
  controlador.sink.add('teste');
  controlador.sink.add('gio');
  controlador.close();

  print('Canal aberto');
}
