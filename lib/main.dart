import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_recognizer/src/View/mainPage.dart';
import 'package:text_recognizer/src/providerState/providerState.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
      ),
      home: ChangeNotifierProvider(
        create: (_) => TextRecognitionState(),
        child: const TextRecognitionPage(),
      ),
    );
  }
}



