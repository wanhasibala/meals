import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screen/tabs.dart';

final Theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark, seedColor: Colors.black87),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MateirialApp());
}

class MateirialApp extends StatelessWidget {
  const MateirialApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: Theme,
      home: const TabScreen(),
    );
  }
}
