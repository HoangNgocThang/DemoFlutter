import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TestProviderScreen extends StatefulWidget {
  const TestProviderScreen({super.key});

  @override
  State<TestProviderScreen> createState() => _TestProviderScreenState();
}

class _TestProviderScreenState extends State<TestProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Redux'),
      ),
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
                          Container(color: Colors.amber, child: Text('thang1')),
                    ),
                    Expanded(
                      child:
                          Container(color: Colors.amber, child: Text('thang1')),
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Container(color: Colors.red,))
          // Expanded(flex: 1, child: Container(color: Colors.amber ,child: Text('thang'),)),
          // Expanded(flex: 3, child: Container(color: Colors.red, child: Text('thang2')))
        ],
      )),
    );
  }
}
