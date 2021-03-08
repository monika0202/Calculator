import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Calculator'),
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
  String _text = "0";
  double opreato;
  List r;
  double opreato2;
  String ch;
  TextEditingController xyz = TextEditingController();
  TextEditingController xyz2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Flexible(
                child: Row(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Icon(
                Icons.calculate_outlined,
                size: 40,
                color: Colors.white,
              )),
          Text(
            widget.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Roboto',
                letterSpacing: 3),
          ),
        ]))),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 50, right: 30, left: 30),
                  child: TextField(
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 35,
                        decorationStyle: TextDecorationStyle.wavy,
                        textBaseline: TextBaseline.alphabetic),
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    onChanged: (v) => setState(() {
                      _text = v;
                    }),
                    controller: xyz,
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: TextField(
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.lightBlueAccent[700],
                        decorationStyle: TextDecorationStyle.wavy,
                        textBaseline: TextBaseline.alphabetic),
                    keyboardType: TextInputType.number,
                    onChanged: (v) => setState(() {
                      _text = v;
                    }),
                    controller: xyz2,
                  )),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 0, top: 50),
                      child: GridView.count(
                        crossAxisCount: 4,
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)),
                                  onPressed: () {
                                    setState(() {
                                      xyz.text = xyz.text + '1';
                                    });
                                  },
                                  child: Text(
                                    "1",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  textColor: Colors.black,
                                  color: Colors.grey[200])),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '2';
                                  });
                                },
                                child: Text(
                                  "2",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '3';
                                  });
                                },
                                child: Text(
                                  "3",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '\n+  ';
                                    ch = '+';
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlueAccent[700]),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: () {
                                setState(() {
                                  xyz.text = xyz.text + '4';
                                });
                              },
                              child: Text(
                                "4",
                                style: TextStyle(fontSize: 25),
                              ),
                              textColor: Colors.black,
                              color: Colors.grey[200],
                              highlightColor: Colors.lightBlue[300],
                              splashColor: Colors.lightBlue[200],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '5';
                                  });
                                },
                                child: Text(
                                  "5",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '6';
                                  });
                                },
                                child: Text(
                                  "6",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '\n-  ';
                                    ch = '-';
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlueAccent[700]),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '7';
                                  });
                                },
                                child: Text(
                                  "7",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: () {
                                setState(() {
                                  xyz.text = xyz.text + '8';
                                });
                              },
                              child: Text(
                                "8",
                                style: TextStyle(fontSize: 25),
                              ),
                              textColor: Colors.black,
                              color: Colors.grey[200],
                              highlightColor: Colors.lightBlue[300],
                              splashColor: Colors.lightBlue[200],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                              onPressed: () {
                                setState(() {
                                  xyz.text = xyz.text + '9';
                                });
                              },
                              child: Text(
                                "9",
                                style: TextStyle(fontSize: 25),
                              ),
                              textColor: Colors.black,
                              color: Colors.grey[200],
                              highlightColor: Colors.lightBlue[300],
                              splashColor: Colors.lightBlue[200],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '  /  ';
                                    ch = '/';
                                  });
                                },
                                child: Text(
                                  "/",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlueAccent[700]),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '  *  ';
                                    ch = '*';
                                  });
                                },
                                child: Text(
                                  "*",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlueAccent[700]),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = xyz.text + '0';
                                  });
                                },
                                child: Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    xyz.text = ' ';
                                  });
                                },
                                child: Text(
                                  "Clr",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlueAccent[700]),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                onPressed: () {
                                  setState(() {
                                    switch (ch) {
                                      case '+':
                                        {
                                          r = (xyz.text).split('+');
                                          opreato = double.parse(r[0]);

                                          opreato2 = double.parse(r[1]);
                                          opreato = opreato + opreato2;
                                          xyz2.text = opreato.toString();
                                          TextStyle(
                                              fontSize: 50,
                                              color:
                                                  Colors.lightBlueAccent[700]);
                                        }
                                        break;
                                      case '-':
                                        {
                                          r = (xyz.text).split('-');
                                          opreato = double.parse(r[0]);

                                          opreato2 = double.parse(r[1]);
                                          opreato = opreato - opreato2;
                                          xyz2.text = opreato.toString();
                                        }
                                        break;
                                      case '*':
                                        {
                                          r = (xyz.text).split('*');
                                          opreato = double.parse(r[0]);

                                          opreato2 = double.parse(r[1]);
                                          opreato = opreato * opreato2;
                                          xyz2.text = opreato.toString();
                                        }
                                        break;
                                      case '/':
                                        {
                                          r = (xyz.text).split('/');
                                          opreato = double.parse(r[0]);

                                          opreato2 = double.parse(r[1]);
                                          opreato = opreato / opreato2;

                                          xyz2.text = opreato.toString();

                                          TextStyle(
                                              fontSize: 50,
                                              color:
                                                  Colors.lightBlueAccent[700]);
                                        }
                                        break;
                                    }
                                  });
                                },
                                child: Text(
                                  "=",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.lightBlueAccent[700],
                                  ),
                                ),
                                textColor: Colors.black,
                                color: Colors.grey[200],
                                highlightColor: Colors.lightBlue[300],
                                splashColor: Colors.lightBlue[200],
                              )),
                        ],
                      )))
            ]));
  }
}
