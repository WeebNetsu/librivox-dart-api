import 'package:librivox_dart_api/librivox_dart_api.dart' as librivox;

Future<void> main(List<String> arguments) async {
  final b = await librivox.getAuthors();
  print(b.map((realB) => realB.firstName).join(", "));
//   await librivox.getAuthors();
}
