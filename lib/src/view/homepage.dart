import 'package:flutter/material.dart';
import 'package:flutter_mvc_pattern/src/controller/main_controller.dart';

class HomePage extends StatefulWidget {
  final String title = 'MVC Pattern';
  final String title1 = 'Push buttons to increase and decrease value.';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller con = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.title1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(
                      () {
                        con.decrementCounter;
                      },
                    );
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                Text(con != null ? '${con.counter}' : "hi"),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      con.incrementCounter;
                    });
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
