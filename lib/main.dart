import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo/presentation/home/home_page.dart';
import 'package:todo/services.dart';

void main() {
  Services.init();

  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey.shade900,
          brightness: PlatformDispatcher.instance.platformBrightness,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
