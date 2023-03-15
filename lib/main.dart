import 'package:flutter/material.dart';
import 'package:furniture_app/ui/onboarding_page.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture',
      theme: ThemeData(
        primaryColor: const Color(0xff515558),
        scaffoldBackgroundColor: const Color(0xfffbfaf8),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xff5b8078),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xff5b8078),
            ),
            // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            //   const EdgeInsets.symmetric(vertical: 20),
            // ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          ),
        ),
      ),
      home: const OnboardingPage(),
    );
  }
}
