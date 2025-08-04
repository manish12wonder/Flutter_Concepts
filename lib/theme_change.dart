import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Theme Switcher',
      debugShowCheckedModeBanner: false,
      // Apply current theme mode
      themeMode: _themeMode,

      // Light Theme
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        useMaterial3: true,
      ),

      // Dark Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        useMaterial3: true,
      ),

      home: MyHomePage(onToggleTheme: _toggleTheme),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const MyHomePage({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap to Toggle Theme')),
      body: Center(
        child: ElevatedButton(
          onPressed: onToggleTheme,
          child: const Text('Switch Theme'),
        ),
      ),
    );
  }
}
