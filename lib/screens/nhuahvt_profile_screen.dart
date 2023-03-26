import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NhuahvtProfileScreen extends StatefulWidget {
  const NhuahvtProfileScreen({super.key});

  @override
  State<NhuahvtProfileScreen> createState() => _NhuahvtProfileScreenState();
}

class _NhuahvtProfileScreenState extends State<NhuahvtProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
