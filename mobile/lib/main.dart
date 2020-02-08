import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() => runApp(Tracker());


class Tracker extends StatelessWidget {
  String title = 'GPS tracker';                         // new

  final store = new Store<AppState> (
      appReducer,
      initialState: new AppState(),
      middleware: [],
  );



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(                             // updated
        title: title,                                   // new
        home: new HomePage(title),                      // new
    );
  }
}
