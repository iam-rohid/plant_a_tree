import 'package:flutter/material.dart';
import 'package:plant_a_tree/configs/configs.dart';
import 'package:plant_a_tree/views/views.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const TabView(),
    );
  }
}
