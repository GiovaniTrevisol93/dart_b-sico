import 'dart:io';
import 'dart:convert';

main() {
  print(
      'Sistema operacional: ${Platform.operatingSystem} - versão: ${Platform.version}');

  if (Platform.isWindows) {
    print("Sistema Operacinal Windows");
  } else if (Platform.isMacOS) {
    print("Sistema Operacinal OSX");
  } else if (Platform.isLinux) {
    print("Sistema Operacinal Linux");
  } else if (Platform.isAndroid) {
    print("Sistema Operacinal Android");
  } else {
    print('Rodando código');
  }
  print('------------------------');
  print('Path: ${Platform.script.path}');
  print('Path dart: ${Platform.executable}');

  print('------------------------');
  print('variáveis de ambiente:');

//   Platform.environment.keys.forEach((key) {
//     print('${key} : ${Platform.environment[key]}');
//   });

  print('-----------Executar um Processos-------------');

//neste exemplo abre o notepad
  Process.run('C:/Windows/System32/notepad.exe', [])
      .then((ProcessResult result) {
    print(result.stdout);

    print('Codigo de saída: ${result.exitCode}'); // se for 0 esta OK
  });
}
