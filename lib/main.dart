import 'package:flutter/material.dart';
import 'package:gridtask/screens/details_screen.dart';
import 'package:gridtask/components/category.dart';
import 'package:gridtask/models/details.dart';
import 'package:gridtask/screens/home.dart';

void main() {
  runApp(gridTask());
}

class gridTask extends StatelessWidget {
  const gridTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
