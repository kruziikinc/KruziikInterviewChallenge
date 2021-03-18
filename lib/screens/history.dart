import 'package:calc_challenge/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {

  String equation = "0";
  String result = "0";
  String expression = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "History",
          style: TextStyle(fontSize: 25),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calc()));
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 10),
            child: Text(equation, style: TextStyle(fontSize: 20),),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 10),
            child: Text(result, style: TextStyle(fontSize: 30),),
          ),
        ],
      )
    );
  }
  void getData()async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    var equation=preferences.getString('0');
    var result=preferences.getString('0');
  }
}
