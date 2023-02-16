import 'package:flutter/material.dart';
import 'package:template/page/sub_page.dart';
import 'package:template/widget/change_notifier_page.dart';
import 'package:template/widget/stateful_widget_page.dart';
import 'package:template/widget/stateless_widget_page.dart';
import 'package:template/widgets/widgets.dart';

class RouterPage extends StatelessWidget {
  const RouterPage(this.route, {super.key});

  final String route;

  @override
  Widget build(BuildContext context) {
    if (route == 'home') return const HomePage();
    if (route == 'sub') return const SubPage();
    if (route == 'stateful') return const StatefulWidgetPage();
    if (route == 'stateless') return const StatelessWidgetPage();
    if (route == 'changenotifier') return const ChangeNotifierPage();
    return Container();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EVC dynamic running")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Header('Navigate'),
        button(context, 'Navigate to a new page implemented in EVC bytecode',
            'sub'),
        const Header('Widget'),
        button(context, 'StatefulWidget demo', 'stateful'),
        button(context, 'StatelessWidget demo', 'stateless'),
        button(context, 'ChangeNotifier demo', 'changenotifier'),
        const Header('UI Widgets'),
      ]),
    );
  }

  Widget button(BuildContext context, String title, String route) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(route);
        },
        child: Text(title));
  }
}
