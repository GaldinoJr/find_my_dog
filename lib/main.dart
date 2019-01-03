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
                Stack
                  (
                    children: <Widget>
                    [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 300,
                          height: 500,
                          padding: new EdgeInsets.only(
                              top: 50,
                              left: 25,
                              right: 25
                          ),
                          margin: EdgeInsets.only(
                              bottom: 100
                          ),
                          decoration: new BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40),
                                bottomLeft: const Radius.circular(40),
                              ),
                              boxShadow: <BoxShadow>[
                                new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 40.0,
                                  offset: new Offset(0.0, 10.0),
                                ),
                              ]
                          ),
                          child: viewLogin(),
                        ),
                      ),
                      Positioned(
                          right: 60,
                          left: 180,
                          bottom: 76,
                          child: Container(
                              child: new RaisedButton
                                (
                                onPressed: onLoginClicked,
                                child: Text(
                                  Strings.of(context).login,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900
                                  ),
                                ),
                                textColor: Colors.deepPurple,
                                color: Colors.white,
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                              ),
                          )
                      )
                    ]
                )
              ],
            )
        )
    );
  }

  viewLogin() {
    return Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.of(context).login,
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),

              )
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  Strings.of(context).email,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                  ),
                )),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 18),
              child: TextField(
                style: new TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                    )
                ),
              )
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  Strings.of(context).password,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                  ),
                )),
          ),

          Container(
              decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              margin: EdgeInsets.only(
                  top: 10
              ),
              padding: EdgeInsets.only(left: 18),
              child:
              TextField(
                style: new TextStyle(
                    color: Colors.white
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                    )
                ),
              )
          )
        ]
    );
  }

  onLoginClicked() {

  }
}
