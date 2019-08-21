import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BurgerVideo extends StatelessWidget {
  final String video;

  const BurgerVideo({ Key key, @required this.video }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (video == null) {
      return Container();
    }
    
    return InkWell(
      child: Row(
        children: <Widget>[
          Icon(Icons.video_library),
        ]
      ),
       onTap: () async {
          if (await canLaunch(video)) {
            await launch(video);
          }
        },
    );
  }
}
