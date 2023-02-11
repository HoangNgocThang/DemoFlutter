import 'package:flutter/material.dart';
import 'package:my_app/sceens/home-screen.dart';
import 'package:my_app/sceens/login-screen.dart';
import 'package:my_app/sceens/test-provider-screen.dart';
import 'package:my_app/sceens/test-screen.dart';
// import 'package:device_preview/device_preview.dart';

void main() => runApp(MyApp());

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
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/test': (context) => TestScreen(),
        '/test-provider': (context) => TestProviderScreen()
      },
      initialRoute: '/test-provider',
      debugShowCheckedModeBanner: false,
      //  darkTheme: ThemeData.dark(),
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
    );
  }
}
