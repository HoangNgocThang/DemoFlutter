import 'package:flutter/material.dart';
import 'package:my_app/sceens/home-screen.dart';
import 'package:my_app/sceens/login-screen.dart';
import 'package:my_app/sceens/test-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomeScreen(),
      // home: LoginScreen(),
      // home: TestScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/test': (context) => TestScreen()
      },
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
    );
  }
}