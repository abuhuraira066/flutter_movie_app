import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_movie_app/pages/CategoryPage.dart';
import 'package:my_movie_app/pages/HomePage.dart';
import 'package:my_movie_app/pages/MoviePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // To hide  status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0F111D)),
      routes: {
        "/": (context) => const HomePage(),
        "categoryPage": (context) => const CategoryPage(),
        "moviePage": (context) => MoviePage(),
      },
    );
  }
}
