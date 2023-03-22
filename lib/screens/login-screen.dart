import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const Text(
              'test',
            ),
            TextButton(
                onPressed: () => {Navigator.pushNamed(context, '/home')},
                child: const Text("Go To Home")),
            TextButton(
                onPressed: () =>
                    {Navigator.pushReplacementNamed(context, '/home')},
                child: const Text("Replace Home"))
          ],
        ),
      ),
    );
  }
}
