import 'package:afkoli_apk/screen/auth/first_page_screen.dart';
import 'package:afkoli_apk/screen/user/bottom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstPageScreen(),
    );
  }
}
