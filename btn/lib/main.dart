import 'package:flutter/material.dart';
import 'btn.dart';
import 'expandableButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Buttons Template'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          //use of btn.dart
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Center(
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(5),
                      child: btnIconLTextR(
                        Colors.yellow,
                        EdgeInsets.fromLTRB(5, 5, 1, 5),
                        Colors.blue,
                        Colors.black,
                        30,
                        18.0,
                        1.0,
                        Colors.black,
                        Icons.access_alarm,
                        Text(
                          'Alarm',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        () {},
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: EdgeInsets.all(5),
                      child: btnIconUTextD(
                        Colors.amber,
                        EdgeInsets.fromLTRB(5, 5, 1, 5),
                        Colors.blue,
                        Colors.black,
                        30,
                        18.0,
                        1.0,
                        Colors.black,
                        Icons.access_alarm,
                        Text(
                          'Alarm',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        () {},
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(5),
                      child: btnTextLIconR(
                        Colors.red,
                        EdgeInsets.fromLTRB(5, 5, 1, 5),
                        Colors.blue,
                        Colors.black,
                        30,
                        18.0,
                        1.0,
                        Colors.black,
                        Icons.access_alarm,
                        Text(
                          'Alarm',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        () {},
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.all(5),
                      child: btnTextUIconD(
                        Colors.transparent,
                        EdgeInsets.fromLTRB(5, 5, 5, 5),
                        Colors.blue,
                        Colors.black,
                        30,
                        360,
                        1.0,
                        Colors.black,
                        Icons.access_alarm,
                        Text(
                          'Alarm',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    child: btnText(
                        Colors.blue,
                        Colors.red,
                        360,
                        3,
                        Colors.black,
                        Text(
                          'Alarm',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        () {}),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    child: btnIcon(
                        Colors.purpleAccent,
                        Colors.purple,
                        Colors.black,
                        20,
                        360,
                        2,
                        Colors.black,
                        Icons.alarm,
                        () {}),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    child: btnImg(
                        Colors.black,
                        Colors.blue,
                        50,
                        36,
                        3,
                        Colors.blue,
                        'https://picsum.photos/250?image=9',
                        () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //use of expandableButton.dart
      floatingActionButton: ExpandableButton(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.format_size),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.insert_photo),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_enhance),
          ),
          ActionButton(
            onPressed: () {},
            icon: const Icon(Icons.camera),
          ),
        ],
      ),
    );
  }
}
