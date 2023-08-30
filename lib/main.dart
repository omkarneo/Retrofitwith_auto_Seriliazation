import 'package:flutter/material.dart';
import 'package:retrofitgetwithseriliazation/pages/page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GetData());
  }
}
