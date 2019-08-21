import 'package:flutter/material.dart';
import 'package:burgers/widgets/detailsBox.dart';
import 'package:burgers/widgets/ingredients.dart';
import 'package:burgers/widgets/method.dart';
import 'package:burgers/widgets/sliverAppBarDelegate.dart';
import 'package:burgers/models/burger_model.dart';

class DetailsPage extends StatelessWidget {
  final Burger burger;

  const DetailsPage({Key key, @required this.burger}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: false,
                pinned: true,
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(burger.name),
                  background: Image.network(
                    burger.image,
                    fit: BoxFit.cover,
                  )
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Informações"),
                      Tab(icon: Icon(Icons.shopping_cart), text: "Ingredientes"),
                      Tab(icon: Icon(Icons.help), text: "Método"),
                    ],
                  ),
                  Theme.of(context).primaryColor
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: TabBarView(
              children: [
                DetailsBox(burger: burger),
                Ingredients(burger: burger),
                Method(burger: burger),
              ],
            ),
          ),
        ),
      )
    );
  }
}
