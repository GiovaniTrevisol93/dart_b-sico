import 'dart:io';

main() async {
  print('Começou');
  appendFile();

  print(await readFile());
  print('###### FIM');
}

void appendFile() {
  File file = File(Directory.current.path + '/teste.txt');
  DateTime dt = DateTime.now();
  file.writeAsString(dt.toString() + '\r\n', mode: FileMode.append);
}

Future<String> readFile() {
  File file = File(Directory.current.path + '/teste.txt');
  return file.readAsString();
}
