import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_fire/pages/category.dart';
import 'package:movies_fire/pages/moviepage.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override

  // to hide status bar and below buttons
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff150050),
      ),
      routes: {
        "/": (context) => HomePage(),
        "categoryPage": (context) => CategoryPage(),
        "moviePage": (context) => MoviePage(),
      },
    );
  }
}
