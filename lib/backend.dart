import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

import 'src/src.dart';

Future<Handler> startShelfModular() async {
  return Modular(
    module: AppModule(),
    middlewares: [
      logRequests(),
    ],
  );
}
