import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<double> datas = [
    1,
    2,
    5,
    10.50,
    100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sizer Helper")),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(color: Colors.blue),
                children: [
                  const TableRow(children: [
                    Text(
                      "Height",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Width",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Special ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  for (var i = 0; i < datas.length; i++)
                    TableRow(children: [
                      Text(
                        "${datas[i]}.h = ${datas[i].h}px",
                      ),
                      Text(
                        "${datas[i]}.w = ${datas[i].w}px",
                      ),
                      Text(
                        "${datas[i]}.sp = ${datas[i].sp}px",
                      ),
                    ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
