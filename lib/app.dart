import 'package:flutter/material.dart';
import 'package:app/entry_point.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(8, 166, 82, 1),
        useMaterial3: true,
      ),
      home:  EntryPoint(getUsername()),
    );
  }
}

String getUsername() {
  return 'Екатерина';
}