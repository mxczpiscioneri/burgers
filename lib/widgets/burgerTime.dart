import 'package:flutter/material.dart';

class BurgerTime extends StatelessWidget {
  final String time;

  const BurgerTime({ Key key, @required this.time }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (time == null) {
      return Container();
    }
    
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.timer),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(time),
          ),
        ]
      ),
    );
  }
}
