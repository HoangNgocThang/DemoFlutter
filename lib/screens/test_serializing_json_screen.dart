import 'dart:convert' as json;

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
  String jsonTest = '{"name": "John", "address": {"street":" My st.", "city": "New York"}}';
  Map<String, dynamic> jsonAbc = {
    "name": 'thang',
    "phone": '0123',
    "email": '@gmail.com',
    "subscription": true,
    "address": {"street": 'b', "landmark": 'l', "city": 'a', "state": 's'}
  };
  User user = User(
      name: 'thang2222',
      phone: '0123',
      email: '@gmail.com',
      subscription: true,
      address: Address(street: 'b', landmark: 'l', city: 'a', state: 's'));
  late User u1;

  @override
  void initState() {
    super.initState();
    print(json.jsonDecode(jsonTest));
    print(user.toJson());
    print(User.fromJson(jsonAbc));
    u1 = User.fromJson(jsonAbc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text("Test json"),
          Text(
            user.toJson().toString(),
            style: TextStyle(color: Colors.amber),
          ),
          Text(u1.phone, style: TextStyle(color: Colors.pinkAccent)),
        ],
      )),
    );
  }
}
