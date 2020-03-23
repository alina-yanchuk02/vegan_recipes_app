
import 'package:recipes_app_pt/models/abstract.dart';

class DessertRecipe extends Recipe {

  String quote;
  String imageUrl;
  String name;
  String level;
  String type;
  List<String> ingredients;
  List<String> description;
  List<String> partOfDay;
  int rating;
  int timeMinutes;
  int portions;
  int calories;


  DessertRecipe({
    this.quote="Powered by fruits...",
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


List<DessertRecipe> listaReceitasDessert = [
  DessertRecipe(
    imageUrl: 'assets/images/crepes.jpg',
    name: 'Crepes de aveia',
    type: "Doce",
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Fácil',
    partOfDay: ['lanche', 'pequeno-almoço'],
    rating: 4,
    timeMinutes: 20,
  ),
  DessertRecipe(
    imageUrl: 'assets/images/cake.jpg',
    name: 'Bolo de chocolate',
    type: "Doce",
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Médio',
    partOfDay: ['lanche', 'após-refeições'],
    rating: 5,
    timeMinutes: 60,
  ),

];
