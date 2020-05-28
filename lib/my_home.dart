import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

final controller = PageController(
  initialPage: 0,
);

class _MyHomeState extends State<MyHome> {
  final pageView = PageView(
    controller: controller,
    reverse: false,
    scrollDirection: Axis.vertical,
    onPageChanged: (value) {
      print('page changed');
    },
    children: <Widget>[
      firstPage(),
      secondPage(),
      thirdPage(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'PageView Widget Example',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: pageView,
    );
  }

  static Widget firstPage() {
    return Container(
      color: Colors.purpleAccent,
      child: Center(
        child: Text(
          'First Page',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  static Widget secondPage() {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  static Widget thirdPage() {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Text(
          'Third Page',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
