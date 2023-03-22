import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/widgets/custom_nav_bar.dart';

class NhuahvtCartScreen extends StatefulWidget {
  const NhuahvtCartScreen({Key? key}) : super(key: key);

  @override
  State<NhuahvtCartScreen> createState() => _NhuahvtCartScreenState();
}

class _NhuahvtCartScreenState extends State<NhuahvtCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
          child: ListView(
        children: [
          Text('2'),
        ],
      )),
    );
  }
}
