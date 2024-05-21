import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_chat_app_tutorial/consts.dart';
import 'package:gemini_chat_app_tutorial/pages/home_page.dart';
import 'package:gemini_chat_app_tutorial/pages/splash_page.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF7F6BB)),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
