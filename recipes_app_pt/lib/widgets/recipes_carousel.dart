import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipes_app_pt/models/recipe_dessert.dart';
import 'package:recipes_app_pt/models/recipe_drinks.dart';
import 'package:recipes_app_pt/models/recipe_snacks.dart';
import '../models/recipe_main.dart';
import '../models/abstract.dart';
import '../screens/list_recipes_screen.dart';
import '../screens/recipe_screen.dart';

class RecipesCarousel extends StatelessWidget {

  String recipeType;
  int currentIndex;

  RecipesCarousel(this.recipeType) {
    print(this.recipeType);
  }

  @override
  Widget build(BuildContext context) {
    Recipe recipe;
    int tamanho = 0;

    if (recipeType == "Main") {
      recipe = MainRecipe();
      tamanho = listaReceitasMain.length;
    } else if (recipeType == "Dessert") {
      recipe = DessertRecipe();
      tamanho = listaReceitasDrinks.length;
    } else if (recipeType == "Snack") {
      recipe = SnackRecipe();
      tamanho = listaReceitasSnack.length;
    } else if (recipeType == "Drink") {
      recipe = DrinksRecipe();
      tamanho = listaReceitasDrinks.length;
    }

    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          Text(recipe.quote,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.0,
                  fontFamily: 'Liu Jian Mao Cao')),
        ]),
      ),
      SizedBox(
        height: 30.0,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Top Receitas ',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5)),
                GestureDetector(
                  onTap: () => print("ola"),
                  child: Text(' Ver todas as receitas ',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                      )),
                )
              ])),
      Container(
          height: 300.00,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tamanho,
              itemBuilder: (BuildContext context, int index) {
                if (recipeType == "Main") {
                  recipe = listaReceitasMain[index];
                } else if (recipeType == "Dessert") {
                  recipe = listaReceitasDessert[index];
                } else if (recipeType == "Snack") {
                  recipe = listaReceitasSnack[index];
                } else if (recipeType == "Drink") {
                  recipe = listaReceitasDrinks[index];
                }

                return GestureDetector(
                  onTap: () { 
                    currentIndex=index;
                if (recipeType == "Main") {
                  recipe = listaReceitasMain[currentIndex];
                } else if (recipeType == "Dessert") {
                  recipe = listaReceitasDessert[currentIndex];
                } else if (recipeType == "Snack") {
                  recipe = listaReceitasSnack[currentIndex];
                } else if (recipeType == "Drink") {
                  recipe = listaReceitasDrinks[currentIndex];
                }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => RecipeScreen(recipe: recipe)));
                  },child: Container(
                    margin: EdgeInsets.all(10),
                    width: 210.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                              height: 120.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(recipe.name,
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                        )),
                                    Text(recipe.level,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey)),
                                  ],
                                ),
                              )),
                        ),
                        Positioned(
                          top: 8.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 6.0,
                                    )
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      height: 180.0,
                                      width: 160.0,
                                      image: AssetImage(recipe.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    left: 8.0,
                                    bottom: 10.0,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(FontAwesomeIcons.clock,
                                            size: 27.0, color: Colors.white),
                                        SizedBox(width: 5.0),
                                        Text(
                                          recipe.timeMinutes.toString() +
                                              ' min',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                );
              }))
    ]);
  }
}
