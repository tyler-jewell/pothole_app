import 'package:flutter/material.dart';
import 'package:pothole_app/potholes_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PotholesPage(),
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}
