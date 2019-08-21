import 'package:flutter/material.dart';
import 'package:burgers/models/burger_model.dart';

class Tips extends StatelessWidget {
  final Burger burger;

  const Tips({ Key key, @required this.burger }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (burger.tips == null) {
      return Container();
    }
    
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Dicas:',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(burger.tips),
        ),
      ]
    );
  }
}
