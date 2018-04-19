import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: MyApp(),
      theme: themeData,
  ));
}

final ThemeData themeData = new ThemeData(
  canvasColor: Colors.lightGreenAccent,
  accentColor: Colors.redAccent,
);//ThemeData


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
            onPressed: (){
              Navigator.push(context, PageTwo());
            },
          child: Text("Go to Page Two"),
        ),//FlatButton
      ),//Center
    );//Scafold
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo(): super(builder: (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),//AppBar
      body: Center(
        child: RaisedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  PageThree()
              );//Navigator
            },//OnPressed
            child: Text("Go to Page Three"),
        ),//RaiseButton

      ),//Center
    );
  });
}

class PageThree extends MaterialPageRoute<Null> {
  PageThree(): super(builder: (BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("Last Page"),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 2.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.close),
                onPressed: (){
                  Navigator.pop(context);
                })
          ],
      ),//AppBar
      body: Center(
        child: MaterialButton(
            onPressed: (){
                Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
            },
          child: Text("Go home!"),
        ),//Material Icon
      ),//Center
    );//Scafold
  });
}

