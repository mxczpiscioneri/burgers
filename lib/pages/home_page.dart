import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:burgers/models/burger_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burgers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: this._fetchData(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                  case ConnectionState.active:
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text('Error');
                    }
                    List<Burger> burgers = new List<Burger>();
                    Response response = snapshot.data;

                    for (int i = 0; i < response.data.length; i++) {
                      burgers.add(Burger.fromJson(response.data[i]));
                    }
                    return Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(4),
                        itemCount: burgers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: InkWell(
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: new Container(
                                height: 250,
                                alignment: Alignment.bottomCenter,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage(burgers[index].image),
                                    fit: BoxFit.cover
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.black54,
                                      padding: EdgeInsets.all(16),
                                      child: Center(
                                        child: Text(burgers[index].name),
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            ),
                          );
                        },
                    ));
                }
              },
            )
          ],
        ),
      ),
    );
  }

  _fetchData() async {
    Dio dio = new Dio();
    Response response = await dio.get('https://hamburguer-3c19d.firebaseio.com/burgers.json');

    return response;
  }
}
