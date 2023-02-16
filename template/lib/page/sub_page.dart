import 'package:flutter/material.dart';

/// A Page with a Scaffold for demonstrating the Navigator and Scaffold widget.
class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("I'm a new page")),
      body: const Center(child: Text('Hello')),
    );
  }
}
