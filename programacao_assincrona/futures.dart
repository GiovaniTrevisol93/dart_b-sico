import 'dart:io';

main() {
  //cria o arquivo
  String path = Directory.current.path + '/teste.txt';

  //abre o arquivo
  File file = File(path);
  Future<RandomAccessFile> f = file.open(mode: FileMode.append);

  f.then((RandomAccessFile raf) {
    print('O arquivo foi aberto');
    raf
        .writeString('Olá mundo')
        .then((value) {
          print('Arquivo escrito com sucesso');
        })
        .catchError(() => print('Ocorreu um erro!!!!'))
        .whenComplete(() => raf.close());
  });

  print('final');
}
