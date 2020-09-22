import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quotes Generator",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [],
          backgroundColor: Colors.yellowAccent,
        ),
        body: Quotes(),
      ),
    );
  }
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  var _index = 0;
  List quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "The way to get started is to quit talking and begin doing.",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    "If life were predictable it would cease to be life, and be without flavor.",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
    "Life is what happens when you're busy making other plans.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success."
  ];

  void showQuote() {
    setState(() {
      if (_index == quotes.length - 1) {
        _index = 0;
      } else {
        _index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 400,
              height: 125,
              margin: EdgeInsets.all(30),
              child: Center(
                child: Text(
                  quotes[_index],
                  style: TextStyle(fontSize: 15,),
                ),
              )),
          Divider(
            thickness: 2.3,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: FlatButton.icon(
              onPressed: showQuote,
              icon: Icon(Icons.wb_sunny),
              label: Text("Inspired By Me",style: TextStyle(fontSize: 15) ,),
              color: Colors.lightGreenAccent
            ),
          )
        ],
      ),
    );
  }
}
