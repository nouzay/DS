import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const hauteurContainerInferieur= 80.0;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('IMC CALCULATOR'),
      ),
      body: Column(
        children: <Widget> [
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60.0,
                    ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'Homme',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                      ],
                    ),

                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded (
            child:CarteReutilisable(
              couleur:Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child:Row(
              children: <Widget>[
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
                Expanded (
                  child:CarteReutilisable(
                    couleur:Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color:Color(0xFFEB1555),
            margin:EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: hauteurContainerInferieur,
          )
        ],
      ),
    );
  }
}

class CarteReutilisable extends StatelessWidget {
  //const CarteReutilisable({
  // Key key,
  //}) :super(key: key);
  final Color couleur;
  final Color cardChild;
  CarteReutilisable ({@required this.couleur, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}