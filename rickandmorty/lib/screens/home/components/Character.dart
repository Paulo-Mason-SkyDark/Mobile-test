import 'package:flutter/material.dart';
import 'package:rickandmorty/models/character/CharacterModel.dart';
import 'package:rickandmorty/style/AppBar.dart';
import 'package:rickandmorty/style/LabelStyles.dart';

class CharacterDatails extends StatelessWidget {
  final Results results;
  CharacterDatails({this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF104102),
      appBar: appBarStyle(
        background: Colors.black,
        title: "Rick & Morty",
        titleNeon: true,
      ),
      body: bodyWidget(context),
    );
  }

  bodyWidget(BuildContext context) => ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 1,
                margin: EdgeInsets.only(
                  top: 110,
                  left: 15,
                  right: 15,
                ),
                child: Card(
                  color: Color(0xFF3B3F43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              results.name,
                              style: detailName,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FilterChip(
                            shadowColor: results.status == "Alive"
                                ? Colors.green
                                : Colors.red,
                            backgroundColor: Colors.black12,
                            elevation: 12,
                            onSelected: (a) {},
                            label: Row(
                              children: <Widget>[
                                results.status == "Alive" ? alive : dead,
                                SizedBox(width: 6),
                                Text(
                                  "${results.status} - ${results.species}",
                                  style: bp24,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Text("Gender: ", style: gp24),
                            Text(results.gender, style: wp24),
                          ],
                        ),
                      ),
                      results.origin.name.length > 28
                          ? Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Origin: ", style: gp24),
                                  Text(results.origin.name, style: wp24),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 29.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text("Origin: ", style: gp24),
                                  Text(results.origin.name, style: wp24),
                                ],
                              ),
                            ),
                      results.location.name.length > 25
                          ? Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Location: ", style: gp24),
                                  Text(results.location.name, style: wp24),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Location: ", style: gp24),
                                  Text(results.location.name, style: wp24),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              Hero(
                tag: results.image,
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * .1,
                      left: MediaQuery.of(context).size.width * .26),
                  height: 150.0,
                  width: 150.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(results.image),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}
