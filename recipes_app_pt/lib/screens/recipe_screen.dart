import 'package:flutter/material.dart';
import '../models/abstract.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipeScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeScreen({this.recipe});

  @override
  Widget build(BuildContext context) {
    List<String> ingredientes = recipe.ingredients;

    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Column(children: <Widget>[
            Container(
                height: 330,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                        top: 2,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              height: 280.0,
                              width: 400.0,
                              image: AssetImage(recipe.imageUrl),
                              fit: BoxFit.cover,
                            ))),
                    Positioned(
                        top: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 130,
                            width: 330,
                            color: Color(0xFF64FFDA),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[Text(recipe.name,
                                    )],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[Text(recipe.type)],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  color: Colors.white,
                                  height: 48,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.clock,
                                            color: Colors.green),
                                        SizedBox(width: 10),
                                        Text(
                                            recipe.timeMinutes.toString() +
                                                ' min',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.3,
                                            )),
                                        SizedBox(width: 45),
                                        Icon(FontAwesomeIcons.star,
                                            color: Colors.yellow),
                                        SizedBox(width: 10),
                                        Text(recipe.rating.toString(),style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.3,
                                            )),
                                        SizedBox(width: 45),
                                        Icon(FontAwesomeIcons.signLanguage),
                                        SizedBox(width: 10),
                                        Text(recipe.level,style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.3,
                                            )),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(children: <Widget>[Text('Ingredientes')]),
                    new Column(
                      children: ingredientes
                          .map(
                            (item) => new Row(children: [
                              SizedBox(height: 30),
                              Icon(FontAwesomeIcons.dotCircle,
                                  size: 20.0, color: Color(0xFF7C4DFF)),
                              SizedBox(width: 20),
                              new Text(item)
                            ]),
                          )
                          .toList(),
                    ),
                    Row(children: [Text('Preparação:')]),
                    new Column(
                      children: recipe.description
                          .map(
                            (item) => new Text(item),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            )
          ])
        ],
      ),
    ));
  }
}
