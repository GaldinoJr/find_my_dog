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
        color: Colors.blue,
        child:
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: new EdgeInsets.only(
                      top: 25.0
                  ),
                  color: Colors.white,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),

                Container(
                    width: 300.0,
                    color: Colors.cyan,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                            Strings.of(context).login,
                            style: TextStyle(
                                fontSize: 32.0,
                                color: Colors.white),
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
              ],
            )
        )
    );
  }
}
