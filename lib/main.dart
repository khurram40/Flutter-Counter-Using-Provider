import 'package:flutter/material.dart';
import 'package:counter_app/pages/Home.dart';
import 'package:provider/provider.dart';
import 'package:counter_app/services/incrementValue.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_)=> IncrementValue(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
