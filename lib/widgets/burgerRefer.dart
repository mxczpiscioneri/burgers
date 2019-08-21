import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BurgerRefer extends StatelessWidget {
  final String refer;

  const BurgerRefer({ Key key, @required this.refer }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (refer == null) {
      return Container();
    }
    
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.link),
        ]
      ),
       onTap: () async {
          if (await canLaunch(refer)) {
            await launch(refer);
          }
        },
    );
  }
}
