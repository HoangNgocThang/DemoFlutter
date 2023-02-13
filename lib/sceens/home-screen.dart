import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/model/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String nameTodo = "";
  bool show = false;
  final List<Task> list = [];
  String nameTask = "";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildFormAdd(),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                      children: list
                          .map((e) => Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(bottom: 10),
                                color: Colors.amber,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("${e.id}"),
                                        const SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                        Text(e.task,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: Colors.pink,
                                                fontSize: 16))
                                      ],
                                    ),
                                    const Icon(Icons.delete)
                                  ],
                                ),
                              ))
                          .toList()),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            show = !show;
          });
        },
        backgroundColor: show ? Colors.black : Colors.lightBlue,
        tooltip: 'Increment',
        child: show ? const Icon(Icons.close) : const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Visibility buildFormAdd() {
    return Visibility(
      visible: show,
      child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.all(15),
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: myController,
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        textBaseline: TextBaseline.ideographic),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // labelText: 'Add new To Do',
                        hintText: 'Add new To Do',
                        contentPadding: EdgeInsets.only(left: 10, bottom: 20)),
                  ),
                ),
              ),
              const SizedBox(width: 8, height: 40),
              SizedBox(
                  width: 80,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        list.add(Task(
                            id: DateTime.now().toString(),
                            task: myController.text));
                        myController.text = '';
                      });
                    },
                    child: const Text('Add'),
                  ))
            ],
          )),
    );
  }
}
