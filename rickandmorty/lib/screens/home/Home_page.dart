import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickandmorty/models/character/CharacterModel.dart';
import 'package:rickandmorty/screens/home/components/Character.dart';
import 'package:rickandmorty/style/AppBar.dart';
import 'package:rickandmorty/style/LabelStyles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url =
      "https://rickandmortyapi.com/api/character/?name=rick&status=alive";
  Character character; //intanciamento da class Character
  String results = "Rick";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    setState(() async {
      var res = await http.get(url);
      var decodedJson = jsonDecode(res.body);

      character = Character.fromJson(decodedJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF104102),
      appBar: appBarStyle(
        background: Colors.black,
        title: "Rick & Morty",
        titleNeon: true,
        titleCenter: true,
      ),
      body: character == null
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
              ),
            )
          : ListView.builder(
              itemCount:
                  character.results == null ? 0 : character.results.length,
              itemBuilder: (BuildContext context, int index) {
                if (results == "Rick") {
                  return Container(
                    height: 123,
                    margin:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CharacterDatails(
                              results: character.results[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF000000),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(100),
                                bottomLeft: Radius.circular(50),
                                topLeft: Radius.circular(50),
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.yellow,
                                  blurRadius: 10.0,
                                  offset: Offset(0.0, 5.0),
                                ),
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(112.0, 5.0, 14.0, 0),
                              constraints: BoxConstraints.expand(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    character.results[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: "Product-Sans",
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      character.results[index].status == "Alive"
                                          ? Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green,
                                              ),
                                            )
                                          : Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.red,
                                              ),
                                            ),
                                      SizedBox(width: 5),
                                      Text(
                                          "${character.results[index].status} - ${character.results[index].species}",
                                          style: wp14),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text("Origin:", style: originText),
                                  SizedBox(height: 2.0),
                                  Expanded(
                                    child: Text(
                                        character.results[index].origin.name,
                                        style: originName),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: FractionalOffset.centerLeft,
                            child: Hero(
                              tag: character.results[index].image,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: NetworkImage(
                                  character.results[index].image,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF202428),
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
