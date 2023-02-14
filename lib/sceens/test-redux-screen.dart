import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';


class TestReduxScreen extends StatefulWidget {
  const TestReduxScreen({super.key});

  @override
  State<TestReduxScreen> createState() => _TestReduxScreen();
}

class _TestReduxScreen extends State<TestReduxScreen> {
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
                    StoreConnector<int, String>(
                      converter: (store) => store.state.toString(),
                      builder: (context, count) {
                        return Text(
                          'The button has been pushed this many times: $count',
                        );
                      },
                    ),
                    StoreConnector<int, VoidCallback>(
                      converter: (store) {
                        // Return a `VoidCallback`, which is a fancy name for a function
                        // with no parameters and no return value.
                        // It only dispatches an Increment action.
                        return () => store.dispatch('Increment');
                      },
                      builder: (context, callback) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: callback,
                          child: const Text('TANG'),
                        );
                      },
                    ),
                    StoreConnector<int, VoidCallback>(
                      converter: (store) {
                        // Return a `VoidCallback`, which is a fancy name for a function
                        // with no parameters and no return value.
                        // It only dispatches an Increment action.
                        return () => store.dispatch('Decrease');
                      },
                      builder: (context, callback) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: callback,
                          child: const Text('GIAM'),
                        );
                      },
                    ),
                   
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
