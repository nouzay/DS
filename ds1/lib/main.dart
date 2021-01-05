import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'DS',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        body:
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profil.jpg'),
                ),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return SecondRoute();
                  }),
                  );
                },
              ),
              Text(
                'Noura ZAYOU',
                style: TextStyle(
                  //fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ITS',
                style: TextStyle(
                  //fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                //alignment: Alignment.center,
                //height: 660.0,
                //width: 100.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    size: 25.0,
                    color: Colors.teal.shade900,
                  ),
                  //SizedBox(
                  //  width: 10.0,
                  title: Text(
                    "+33 6 95 89 85 44",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                //alignment: Alignment.center,
                //height: 660.0,
                //width: 100.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25.0,
                    color: Colors.teal.shade900,
                  ),
                  //SizedBox(
                  //  width: 10.0,
                  title: Text(
                    "zayou.noura@gmail.com",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 17.0,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body:
          SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/profil.jpg'),
                      child:
                        Text('CV'),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      },
                  ),
                  SizedBox(
                    height: 20.0,
                      width: 150.0,
                    child: Divider(
                      color: Colors.white
                    ),
                  ),
                  Container(
                    color: Colors.blueGrey,
                  ),
                  FlatButton(
                    child:
                    Container(
                    color : Colors.pink,
                    padding: EdgeInsets.all(15.0),
                    child: Text('Académique'),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return ThirdRoute();
                      }),
                      );
                    },
                  ),
                  FlatButton(
                    child:
                    Container(
                    color : Colors.green,
                    padding: EdgeInsets.all(30.0),
                    child: Text('Professionel'),
                  ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return FourthRoute();
                          }),
                      );
                    },
                  ),
                    FlatButton(
                      child:
                    Container(color : Colors.purple,
                    padding: EdgeInsets.all(45.0),
                    child: Text('Langues'),
                  ),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return FifthRoute();
                          }),
                        );
                      },
                    ),
                      Container(color : Colors.yellow,
                    padding: EdgeInsets.all(60.0),
                    child: Text('Autre'),
                  ),
                ],
            ),
          ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('retour'),
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page4"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('retour'),
        ),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page5"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('retour'),
        ),
      ),
    );
  }
}


