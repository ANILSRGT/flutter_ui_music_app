import 'package:flutter/material.dart';

import 'colors.dart';
import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      theme: ThemeData(
        textTheme: const TextTheme().apply(
          bodyColor: AppColors.onBackground,
          displayColor: AppColors.onBackground,
          decorationColor: AppColors.onBackground,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.onBackground,
        ),
      ),
    );
  }
}
