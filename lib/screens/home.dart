import 'package:calc_challenge/nav/appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * .1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
              width: 1,
            )),
        padding: EdgeInsets.all(16.0),
        onPressed: () {},
        // onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNav(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
            child: Text(
              "equation",
              style: TextStyle(fontSize: 48.0),
              // style: TextStyle(fontSize: equationFontSize),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
            child: Text(
              "result",
              style: TextStyle(fontSize: 38.0),
              // style: TextStyle(fontSize: resultFontSize),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("(", 1, Colors.orange),
                      buildButton(")", 1, Colors.orange),
                      buildButton("%", 1, Colors.orange),
                      buildButton("AC", 1, Colors.redAccent),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.blue),
                      buildButton("8", 1, Colors.blue),
                      buildButton("9", 1, Colors.blue),
                      buildButton("/", 1, Colors.orange),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.blue),
                      buildButton("5", 1, Colors.blue),
                      buildButton("6", 1, Colors.blue),
                      buildButton("*", 1, Colors.orange),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.blue),
                      buildButton("2", 1, Colors.blue),
                      buildButton("3", 1, Colors.blue),
                      buildButton("-", 1, Colors.orange),
                    ]),
                    TableRow(children: [
                      buildButton("0", 1, Colors.blue),
                      buildButton(".", 1, Colors.blue),
                      buildButton("=", 1, Colors.green),
                      buildButton("+", 1, Colors.orange),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
