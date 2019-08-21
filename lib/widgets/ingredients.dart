import 'package:flutter/material.dart';
import 'package:burgers/models/burger_model.dart';

class Ingredients extends StatelessWidget {
  final Burger burger;

  const Ingredients({ Key key, @required this.burger }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (burger.ingredients == null) {
      return Container();
    }

    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: burger.ingredients.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.subdirectory_arrow_right),
                title: Text(burger.ingredients[index]),
              );
            },
          )
        )
      ]
    );
  }
}
