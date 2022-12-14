import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'pages/home_page.dart';
import 'pages/static_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.orange,
      ),
      home: const StaticHomePage(),
    );
  }
}
