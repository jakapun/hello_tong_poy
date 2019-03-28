import 'package:flutter/material.dart';

// this is main method for start app
// void main() {
//   // สร้าง method แบบ ไม่คืนค่า

//   var app = MaterialApp(
//     home: Text('hello first app'),
//   );
//   runApp(app);
// }

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // this method is return widget button
  Widget myButtom() {
    return RaisedButton(
      child: Text('please click me'),
      onPressed: () {
        print('you click me');
      },
    );
  }

  Widget showText2(String textString) {
    return Text(textString);
  }

  @override
  Widget build(BuildContext context) {
    Widget myIcon = Icon(Icons.android);

    Widget showText1 = Text(
      'show text one',
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    ); // Field

    return MaterialApp(
      // home: Text('hello'),
      home: Scaffold(
        // appBar: AppBar(leading: Text('laeding'),
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          actions: <Widget>[
            Icon(Icons.call),
            Icon(Icons.android),
            Icon(Icons.arrow_back)
          ],
          leading: Icon(Icons.add_shopping_cart), //เพื่ิม icon
          title: Text('this is appbar 2'),
        ),
        // body: Text('this is body'),
        // body: showText1,
        body: Container(
          // alignment: Alignment(0, 0),
          // margin: EdgeInsets.all(40.0),
          padding: EdgeInsets.only(top: 40.0),
          margin: EdgeInsets.all(40.0),
          alignment: Alignment.topCenter,
          color: Colors.yellow, //put color yellow in container
          // child: showText1,
          // child: myButtom(),
          child: Column(
            children: <Widget>[
              Container(color: Colors.red, margin: EdgeInsets.only(left: 100.0),
                child: Row(
                  children: <Widget>[myIcon, myIcon, myIcon],
                ),
              ),
              showText1,
              showText2('test showtext2'),
              myButtom()
            ],
          ),
        ),
      ),
    );
  }
}
