import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: "DSC APP",
        home: Scaffold(
            appBar: AppBar(actions: <Widget>[
              IconButton(
                    icon: Icon(Icons.arrow_back_ios,size: 35.0,color: Colors.blueGrey),
                    tooltip: 'Back',
                    onPressed: () {}
                ),
              IconButton(
                  icon: const Icon(Icons.account_circle,size: 35.0,color: Colors.blueGrey),
                  tooltip: 'Account',
                  onPressed: () {}
              )
            ],
                title: Center(child: Text('Past Events',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.normal,color: Colors.brown))),
                backgroundColor: Colors.greenAccent),
            body: PastEvents()
        )
    );
  }
}
class PastEvents extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: 40.0),
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "    Event 1",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        )),
                    Expanded(
                        child: Event()
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "    Event 2",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.blue),
                        )),
                    Expanded(
                        child: Event()
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "    Event 3",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.red),
                        )),
                    Expanded(
                        child: Event()
                    )
                  ],
                ),
              )
            ],
            )));
  }
}
class Event extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return   Container(

      width: 1000,

      height: 100,

      child:
      RaisedButton(color: Colors.brown,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20.0),

          ),
          child: Card(),
          onPressed: (){}
      ),
    );
  }
}