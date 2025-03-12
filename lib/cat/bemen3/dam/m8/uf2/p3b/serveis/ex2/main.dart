import 'package:flutter/material.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/home_screen.dart';
import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/ex2/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Counter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(),
    );
  }
}
