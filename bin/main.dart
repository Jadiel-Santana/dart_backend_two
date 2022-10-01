import 'package:dart_backend_two/backend.dart';
import 'package:shelf/shelf_io.dart' as io;

void main(List<String> arguments) async {
  final handler = await startShelfModular();
  final server = await io.serve(handler, '0.0.0.0', 4466);
  print('Online -> http://${server.address.address}:${server.port}');
}
