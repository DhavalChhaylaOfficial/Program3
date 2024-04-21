import 'package:flutter/material.dart';

import 'SecondPage.dart';

class GreetPage extends StatelessWidget {
  final String name;

  GreetPage(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greet Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, //9
                MaterialPageRoute(
                  builder: (context) =>
                      SecondPage(name),
                ));
          },
        ),
      ),
      body: Center(
        child: Text(
          'Have a great day',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
