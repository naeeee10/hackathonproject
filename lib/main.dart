import 'package:fitness_checker_app/pages/homepage.dart';
import 'package:fitness_checker_app/pages/pages_transition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const FitnessApp(),
  );
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fitness App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "IBMPlexSans",
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
          displayMedium: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          displaySmall: TextStyle(
            color: Color.fromARGB(255, 70, 69, 69),
            fontSize: 14,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 237, 236, 236),
          primary: const Color.fromARGB(255, 237, 236, 236),
          secondary: const Color.fromARGB(255, 220, 220, 220),
        ),
      ),
      home: const PagesTransition(),
    );
  }
}

// providers: const [
//         // ChangeNotifierProvider(
//         //   create: (context) => FavortieItemsProvider(),
//         // ),
//         // ChangeNotifierProvider(
//         //   create: (context) => CartProvider(),
//         // ),
//       ],