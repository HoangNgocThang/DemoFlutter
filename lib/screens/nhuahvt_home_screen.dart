import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/widgets/custom_nav_bar.dart';

class NhuahvtHomeScreen extends StatefulWidget {
  const NhuahvtHomeScreen({super.key});

  @override
  State<NhuahvtHomeScreen> createState() => _NhuahvtHomeScreenState();
}

class _NhuahvtHomeScreenState extends State<NhuahvtHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Text('1'),
          Text('1'),
          Text('1'),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/test-json');
          }, child: Text('click'))
        ],
      )),
    );
  }
}
