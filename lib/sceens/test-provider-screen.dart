import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TestProviderScreen extends StatefulWidget {
  const TestProviderScreen({super.key});

  @override
  State<TestProviderScreen> createState() => _TestProviderScreenState();
}

class _TestProviderScreenState extends State<TestProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Spacer(),
                    Expanded(
                      child:
                          Container(color: Colors.amber, child: Text('thang')),
                    ),
                    Expanded(
                      child:
                          Container(color: Colors.amber, child: Text('thang')),
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(color: Colors.red, child: Text('thang2')))
          // Expanded(flex: 1, child: Container(color: Colors.amber ,child: Text('thang'),)),
          // Expanded(flex: 3, child: Container(color: Colors.red, child: Text('thang2')))
        ],
      )),
    );
  }
}
