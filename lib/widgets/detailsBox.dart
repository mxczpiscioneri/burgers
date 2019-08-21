import 'package:flutter/material.dart';
import 'package:burgers/widgets/burgerRefer.dart';
import 'package:burgers/widgets/burgerServes.dart';
import 'package:burgers/widgets/burgerTime.dart';
import 'package:burgers/widgets/burgerVideo.dart';
import 'package:burgers/widgets/tips.dart';
import 'package:burgers/models/burger_model.dart';

class DetailsBox extends StatelessWidget {
  final Burger burger;

  const DetailsBox({ Key key, @required this.burger }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(burger?.description ?? ""),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              BurgerTime(time: burger.time),
              BurgerServes(serves: burger.serves.toString()),
              BurgerVideo(video: burger.video),
              BurgerRefer(refer: burger.refer),
            ]
          ),
        ),
        Tips(burger: burger),
      ],
    );
  }
}
