import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String nameTodo = "";
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: show,
              child: Container(
                  margin: EdgeInsets.all(15),
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          height: 40,
                          child: TextField(
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                textBaseline: TextBaseline.ideographic),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                // labelText: 'Add new To Do',
                                hintText: 'Add new To Do',
                                contentPadding:
                                    EdgeInsets.only(left: 10, bottom: 20)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                        height: 40,
                      ),
                      SizedBox(
                          width: 80,
                          height: 40,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white),
                            onPressed: () {},
                            child: Text('Add'),
                          ))
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            show = true;
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
