import 'package:flutter/material.dart';
import 'package:burgers/models/burger_model.dart';

class Method extends StatelessWidget {
  final Burger burger;

  const Method({ Key key, @required this.burger }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (burger.method == null) {
      return Container();
    }
    
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: burger.method.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.subdirectory_arrow_right),
                title: Text(burger.method[index]),
              );
            },
          )
        )
      ]
    );
  }
}
