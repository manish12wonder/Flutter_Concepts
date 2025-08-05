import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyWidget(), debugShowCheckedModeBanner: false,));

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState(); //create state widget
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState(); // ✅ 1st: Initialize variables, start animations, fetch data
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies(); // ✅ 2nd: Use context (InheritedWidget, etc.)
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    super.didUpdateWidget(oldWidget); // ✅ Called when widget config changes
    print('didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('build'); // ✅ Called whenever setState() is triggered
    return const Text('Hello');
  }

  @override
  void dispose() {
    super.dispose(); // ✅ Cleanup (controllers, timers, streams, etc.)
    print('dispose');
  }
}
