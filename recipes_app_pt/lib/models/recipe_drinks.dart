
import 'package:recipes_app_pt/models/abstract.dart';

class DrinksRecipe extends Recipe {

  String quote;

  String imageUrl;
  String name;
  String type;
  String level;
  List<String> ingredients;
  List<String> description;
  List<String> partOfDay;
  int rating;
  int timeMinutes;
  int portions;
  int calories;


  DrinksRecipe({
    this.quote="Not your mom, not your milk...",
    this.imageUrl,
    this.name,
    this.type,
    this.ingredients,
    this.description,
    this.portions,
    this.rating,
    this.level,
    this.partOfDay,
    this.timeMinutes,
    this.calories,
  });

}


List<DrinksRecipe> listaReceitasDrinks = [
  DrinksRecipe(
    imageUrl: 'assets/images/pepino.jpg',
    name: 'Smoothie de pepino',
    type: "Bebida",
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Fácil',
    partOfDay: ['lanche', 'pequeno-almoço'],
    rating: 5,
    timeMinutes: 10,
  ),
  DrinksRecipe(
    imageUrl: 'assets/images/aveia.jpg',
    name: 'Smoothie de aveia',
    type:'Bebida',
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Fácil',
    partOfDay: ['lanche', 'pequeno-almoço'],
    rating: 4,
    timeMinutes: 10,
  ),

];
