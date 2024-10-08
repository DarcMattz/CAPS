import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poetsen One'),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
