import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class NhuahvtHomeScreen extends StatefulWidget {
  const NhuahvtHomeScreen({super.key});

  @override
  State<NhuahvtHomeScreen> createState() => _NhuahvtHomeScreenState();
}

class _NhuahvtHomeScreenState extends State<NhuahvtHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                height: 135,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 27),
                        // color: Colors.yellow,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/lake.jpg'),
                              radius: 24,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              // height: 48,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chào Hoàng Thắng',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Chúc bạn một ngày tuyệt vời!',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 27, right: 27),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Tìm kiếm',
                                    border: InputBorder.none)),
                          ),
                          SizedBox(width: 14),
                          InkWell(
                            onTap: () {
                              print('click');
                            },
                            child: Container(
                              width: 47,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(20.0)),
                                  color: HexColor("#FFC428")),
                              child:  Image.asset(
                                'images/Bag2.png',
                                  // height: 10,
                                  // width: 10,
                                  // fit:BoxFit.cover
                              )
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          child: Text('a'),
                        )
                      ],
                    ),
                  ]),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          child: Text('a'),
                        )
                      ],
                    ),
                  ]),
                )),
          ],
        ),
      )),
    );
  }
}
