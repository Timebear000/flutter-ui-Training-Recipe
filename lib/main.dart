import 'package:flutter/material.dart';
import 'package:recipes/screens/home_screen.dart';
import 'package:recipes/screens/onboarding_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SFProText",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
