import 'package:flutter/material.dart';
import 'package:template/page/sub_page.dart';
import 'package:template/widgets/widgets.dart';

class RouterPage extends StatelessWidget {
  const RouterPage(this.route, {super.key});

  final String route;

  @override
  Widget build(BuildContext context) {
    if (route == 'home') return const HomePage();
    if (route == 'sub') return const SubPage();
    return Container();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EVC dynamic running")),
      body: Column(children: [
        const Header('Navigate'),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('sub');
            },
            child: const Text(
                'Navigate to a new page implemented in EVC bytecode'))
      ]),
    );
  }
}
