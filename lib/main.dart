import 'package:dart_eval/stdlib/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eval/flutter_eval.dart';

void main() {
  runApp(MaterialApp(routes: {
    'home': (context) => const Renderer('home'),
    'sub': (context) => const Renderer('sub')
  }, initialRoute: 'home'));
}

class Renderer extends StatelessWidget {
  const Renderer(this.route, {super.key});

  final String route;

  @override
  Widget build(BuildContext context) {
    return RuntimeWidget(
        uri: Uri.parse("asset:assets/bundle.evc"),
        library: 'package:template/main.dart',
        function: 'RouterPage.',
        args: [$String(route), null]);
  }
}
