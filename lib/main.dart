import 'package:entrada_de_dados/resources/strings.dart';
import 'package:entrada_de_dados/resources/theme.dart';
import 'package:entrada_de_dados/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      themeMode: currentThemeMode,
      theme: SignUpTheme.light,
      darkTheme: SignUpTheme.dark,
      home: const SignUp(),
    );
  }
}
