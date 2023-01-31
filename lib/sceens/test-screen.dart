import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      /*3*/
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter layout demo'),
        // ),
        body: ListView(children: [
          Image.network(
            'https://img.freepik.com/free-icon/user_318-804790.jpg?w=2000',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          _buildButtonColumn(Colors.black, Icons.home, 'acb'),
          Row(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Row(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Icon(Icons.star, color: Colors.green[500]),
                    ),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Container(
                      color: Colors.red,
                      child: Icon(Icons.star, color: Colors.green[500]),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            color: Colors.black45,
            margin: EdgeInsets.all(15),
            // padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  // padding: EdgeInsets.all(10),
                  flex: 1,
                  child: Column(
                    children: [Text("name")],
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              // padding: EdgeInsets.all(10),
                              color: Colors.amber,
                              child: Text("a")),
                        ),
                        SizedBox(width: 10, height: 10),
                        Expanded(
                          child: Container(
                              // padding: EdgeInsets.all(10),
                              color: Colors.green,
                              child: Text("a")),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('a'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('b'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('c'),
              )
            ],
          )),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 1000,
                width: 100,
                child: Container(color: Colors.orange, child: Text('a')),
                color: Colors.grey,
              )
            ],
          )
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
