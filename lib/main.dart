import 'package:flutter/material.dart';
import 'package:inventario_suqui_cell/screens/splash_screen.dart';
import 'package:inventario_suqui_cell/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventario Suqui Cell',
      theme: AppTheme.theme,
      home: const SplashScreen(),
    );
  }
}
