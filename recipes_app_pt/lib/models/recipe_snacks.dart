
import 'package:recipes_app_pt/models/abstract.dart';

class SnackRecipe extends Recipe {

  String quote;

  String imageUrl;
  String name;
  String level;
  List<String>ingredients;
  List<String>description;
  String type;
  List<String> partOfDay;
  int rating;
  int timeMinutes;
  int portions;
  int calories;


  SnackRecipe({
    this.quote="I just really hate plants...",
    this.imageUrl,
    this.name,
    this.ingredients,
    this.description,
    this.portions,
    this.rating,
    this.level,
    this.type,
    this.partOfDay,
    this.timeMinutes,
    this.calories,
  });

}


List<SnackRecipe> listaReceitasSnack = [
  SnackRecipe(
    imageUrl: 'assets/images/barras.jpg',
    name: 'Barras de iogurte',
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Fácil',
    partOfDay: ['lanche', 'pequeno-almoço'],
    rating: 5,
    timeMinutes: 15,
    type: 'Snack',
  ),


];
