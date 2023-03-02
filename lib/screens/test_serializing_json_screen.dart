import 'package:flutter/material.dart';
import 'package:my_app/model2/address.dart';
import 'package:my_app/model2/user.dart';

class TestSerialozationJsonScreen extends StatefulWidget {
  const TestSerialozationJsonScreen({super.key});

  @override
  State<TestSerialozationJsonScreen> createState() =>
      _TestSerialozationJsonScreenState();
}

class _TestSerialozationJsonScreenState
    extends State<TestSerialozationJsonScreen> {
  String jsonTest = '{name: John, address: {street: My st., city: New York}}';
  User user = User(
      name: 'thang',
      phone: '0123',
      email: '@gmail.com',
      subscription: true,
      address: Address(street: 'b', landmark: 'l', city: 'a', state: 's'));

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(user.toJson());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [Text("Test json"), Text(user.toJson().toString())],
      )),
    );
  }
}
