import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:securedev/pages/homescreen.dart';
import 'package:securedev/pages/introscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? seen = prefs.getBool('false');

  runApp(MainApp(seen: seen ?? false));
}

class MainApp extends StatelessWidget {
  final bool seen;

  const MainApp({super.key, required this.seen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: seen ? HomeScreen() : IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
