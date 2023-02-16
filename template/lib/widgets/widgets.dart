import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
            inherit: true,
            fontSize: 24,
            color: Colors.purple,
            fontWeight: FontWeight.w600));
  }
}
