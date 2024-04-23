import 'package:flutter/material.dart';
import 'package:test/nav_bar.dart';
import 'package:test/screens/auth/select_type.dart';
import 'package:test/screens/auth/sign_up.dart';
import 'package:test/screens/pages/favorite.dart';

void main() {
  runApp(const vitafit());
}

class vitafit extends StatelessWidget {
  const vitafit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: NavBar());
  }
}
