import 'package:librivox_dart_api/librivox_dart_api.dart' as librivox;

Future<void> main(List<String> arguments) async {
  print(await librivox.getAudioBooks());
}
