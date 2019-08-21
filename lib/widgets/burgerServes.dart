import 'package:flutter/material.dart';

class BurgerServes extends StatelessWidget {
  final String serves;

  const BurgerServes({ Key key, @required this.serves }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (serves == null) {
      return Container();
    }
    
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.person),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(serves),
          ),
        ]
      ),
    );
  }
}
