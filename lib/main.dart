import 'package:find_my_dog/languages/Strings.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find my dog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            color: Colors.deepPurple,
            child:
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: new EdgeInsets.only(
                      top: 25.0
                  ),
                  height: 150,
                  color: Colors.white,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 300,
                      height: 500,
                      padding: new EdgeInsets.only(
                        top: 50,
                        left: 25
                      ),
                      decoration: new BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40),
                            bottomLeft: const Radius.circular(40),
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              Strings.of(context).login,
                              style: TextStyle(
                                  fontSize: 32.0,
                                  color: Colors.white),

                            )
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: Strings.of(context).email
                            ),
                          ),

                          TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: Strings.of(context).password
                            ),
                          )
                        ],
                      )
                  ),
                )
              ],
            )
        )
    );
  }
}
