import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text(this.title),
        ),
        body: new Container(
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      new Text(
                          'Sending position to database',
                      ),
                      new Text('0'),
                    ]
                )
            )
        ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => print('PRESSED'),
          child: new Icon(Icons.gps_fixed),
      ),
    );
  }
}
